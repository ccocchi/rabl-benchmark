class UsersController < ApplicationController
  before_filter :load_user
  
  # GET /users/1
  # GET /users/1.json
  def show
    respond_with(@user)
  end
  
  def with_extend
    respond_with(@user)
  end
  
  def deep_nesting
    respond_with(@user)
  end
  
  def with_partial
    respond_with(@user)
  end
  
  protected
  
  def load_user
    @user = User.find(params[:id])
  end
end
