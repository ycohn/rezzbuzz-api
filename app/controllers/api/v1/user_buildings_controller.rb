class Api::V1::UserBuildingsController < ApplicationController

  def create
    user_building = UserBuilding.new(user_id: current_user.id, building_id: params[:user_building][:building_id])
    user_building.save
    render json: user_building
  end

  def show
    user_building = UserBuilding.find(params[:id])
    render json: user_building
  end

  def destroy
  end

end
