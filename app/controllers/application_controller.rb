class ApplicationController < ActionController::Base
  protect_from_forgery

  def respond_with_handler
    handler = params[:old] ? :old : :fast
    render params[:action], handlers: handler
  end
end
