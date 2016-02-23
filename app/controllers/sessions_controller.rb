class SessionsController < ApplicationController
  skip_before_action :authenticate!
  respond_to :html, :json

  def create
    user = User.find_by(email: user_params[:email])
    if user && user.authenticate(user_params[:password])
      data = {
        token: user.authentication_token,
        email: user.email,

      }
      render json: data, status: 201
    else
      render json: {error: "Invalid Username or Password"}, status: 401
    end
  end


  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
