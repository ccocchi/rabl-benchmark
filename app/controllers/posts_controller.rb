class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.order('created_at ASC')
    respond_with_handler(@posts, root: 'posts')
  end

  def without_extend
    @posts = Post.order('created_at ASC')
    respond_with_handler
  end
end
