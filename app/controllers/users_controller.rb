class UsersController < ApplicationController

  def show
    if session[:user_id]
      user = User.find(session[:user_id])
      render json: user, status: :ok
    else
      render json: {error: "Unauthorized user"}, status: :unauthorized
    end
  end
end
