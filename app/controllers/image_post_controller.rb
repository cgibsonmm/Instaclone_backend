class ImagePostController < ApplicationController
  def index
    @posts = ImagePost.with_attached_image.order("created_at DESC")
    render json: @posts
  end
end
