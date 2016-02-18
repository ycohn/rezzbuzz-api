class Api::V1::BuildingsController < ApplicationController
  def index
    render({json: Building.all})
  end

  def create
    building = Building.create_from_ember(building_params)
    render json: building
  end

  def show
    render json: Building.find(params[:id])
  end

  def update
    building = Building.find(params[:id])
    building.update(building_params)
    render json: building
  end

  def destroy
    building = Building.find(params[:id])
    building.destroy
    render nothing: true
  end

  private
  def building_params
    params.require(:building).permit(:name, :description, :address, :latitude, :longitude, :created_at, :updated_at)
  end
end
