class ApplicationController < ActionController::Base
  protect_from_forgery
  check_authorization

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
  end
end
