class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception
end
