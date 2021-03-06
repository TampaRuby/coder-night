class SessionsController < ApplicationController
  skip_authorization_check

  # GET /auth/twitter/callback
  def create
    session[:user_id] = User.find_or_create_with_omniauth(auth).id
    redirect_to :root
  end

  # GET /sign_out
  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

  private

  def auth; request.env['omniauth.auth'] end
end
