class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def current_user
    @current_user ||= session[:current_uuid]
  end
end
