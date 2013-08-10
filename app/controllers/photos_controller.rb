class PhotosController < ApplicationController

  before_action :require_current_user

  def index
    render text: "Coming soon!"
  end

  def show
  end
end
