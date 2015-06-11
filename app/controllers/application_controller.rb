class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def respond_with_handler
    handler = request.headers['X-Render-Handler']
    Rails.logger.debug "Using #{handler} from headers"
    render handlers: handler
  end
end
