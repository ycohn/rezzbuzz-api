class Api::V1::BuildingsController < ApplicationController
  def index
    render({json: Building.all})
  end
end
