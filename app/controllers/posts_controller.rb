class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order('created_at ASC').includes(:comments)
    respond_with(@posts)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.includes(:comments => :user).find(params[:id])
    respond_with(@post)
  end
end
