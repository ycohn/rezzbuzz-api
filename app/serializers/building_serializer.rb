class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :latitude, :longitude, :created_at, :updated_at
  has_many :topics, embed: :ids, include: true
  has_many :users, embed: :ids, include: true
end
