class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :latitude, :longitude, :created_at, :updated_at 
end
