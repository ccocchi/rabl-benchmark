class ApplicationController < ActionController::Base
  protect_from_forgery
  
  respond_to :json

  def respond_with_handler
    handler = params[:old] ? :old : :fast
    render params[:action], handlers: handler
  end
end
