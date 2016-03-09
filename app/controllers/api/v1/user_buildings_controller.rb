class Api::V1::UserBuildingsController < ApplicationController

  def create
    if !(UserBuilding.find_by(user_id: current_user.id, building_id: params[:user_building][:building_id]))
      user_building = UserBuilding.new(user_id: current_user.id, building_id: params[:user_building][:building_id])
      user_building.save
    else
      user_building = UserBuilding.find_by(user_id: current_user.id, building_id: params[:user_building][:building_id])
      render json: user_building
    end
  end

  def show
    user_building = UserBuilding.find(params[:id])
    render json: user_building
  end

  def destroy
    user_building = UserBuilding.find_by(user_id: current_user.id, building_id: params[:id].to_i)
    user_building.destroy
    render json: User.find(current_user.id)
  end

end
