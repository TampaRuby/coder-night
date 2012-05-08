class SessionsController < ApplicationController

  def create
    session[:user_id] = User.with_omniauth(auth).id
    redirect_to :root
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

  private

  def auth; request.env['omniauth.auth'] end
end
