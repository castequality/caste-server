class PostsController < ApplicationController
  def index
    @posts = Post.all

    render json: @posts, serializer: CachedCollectionSerializer
  end
end
