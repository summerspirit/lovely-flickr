class PhotosController < ApplicationController
  before_action :require_current_user

  def index
    render text: "Coming soon!"
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user = @current_user
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render action: :new
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :upload)
  end
end
