class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  if ENV['AUTH_USERNAME'] && ENV['AUTH_PASSWORD']
    http_basic_authenticate_with name: ENV['AUTH_USERNAME'], password: ENV['AUTH_PASSWORD']
  end
end
