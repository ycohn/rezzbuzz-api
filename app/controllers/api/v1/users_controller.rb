class Api::V1::UsersController < ApplicationController

  def new
    user = User.new
    render json: user
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def me
    render json: current_user
  end

  def show
    render json: User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render nothing: true
  end

  def index
    user = authenticate!
    render json: user
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :password, :password_confirmation, :email, :bio, :picture, :created_at, :updated_at)
  end


end
