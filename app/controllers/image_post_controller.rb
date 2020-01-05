class ImagePostController < ApplicationController
  def index
    @posts = ImagePost.with_attached_image.all
    render json: @posts
  end
end
