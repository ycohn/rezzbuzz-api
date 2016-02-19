class BuildingSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :latitude, :longitude, :created_at, :updated_at, :user_ids
  has_many :topics, embed: :ids, include: true
end
