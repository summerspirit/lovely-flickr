class PhotosController < ApplicationController

  before_action :require_current_user

  def index
    render text: "Coming soon!"
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save
    redirect_to photo_path(@photo)
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :upload)
  end
end
