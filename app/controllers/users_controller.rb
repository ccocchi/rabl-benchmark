class UsersController < ApplicationController
  before_filter :load_user
  
  # GET /users/1
  # GET /users/1.json
  def show
    respond_with_handler
  end
  
  def with_extend
    respond_with_handler
  end
  
  def deep_nesting
    respond_with_handler
  end
  
  def with_partial
    respond_with_handler
  end
  
  protected
  
  def load_user
    @user = User.find(params[:id])
  end
end
