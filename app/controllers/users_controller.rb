class UsersController < ApplicationController

  # GET /user.json
  def show
    respond_with @user = current_user
  end
end
