class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def respond_with_handler(objects, opts = {})
    handler = request.headers['X-Render-Handler']
    if handler
      Rails.logger.debug "Using #{handler} from headers"
    else
      Rails.logger.debug "Using default rabl-rails"
      handler = 'fast'
    end

    if handler == 'serial'
      render opts.merge!(json: objects)
    else
      render handlers: handler
    end
  end
end
