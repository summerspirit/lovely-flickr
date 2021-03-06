class PhotosController < ApplicationController

  before_action :require_current_user, except: [:show, :search]

  def index
    render text: "Coming soon!"
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user = @current_user
    @photo.save

    redirect_to photo_path(@photo)
  end

  def search
    @results = Photo.search_for params[:query]
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :upload)
  end
end
