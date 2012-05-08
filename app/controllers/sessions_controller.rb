class SessionsController < ApplicationController

  # GET /auth/twitter/callback
  def create
    session[:user_id] = User.with_omniauth(auth).id
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
