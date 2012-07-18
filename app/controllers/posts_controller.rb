class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order('created_at ASC').includes(:comments)
    respond_with_handler
  end
  
  def without_extend
    @posts = Post.order('created_at ASC').includes(:comments)
    respond_with_handler
  end
end
