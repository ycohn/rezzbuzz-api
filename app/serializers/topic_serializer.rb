class TopicSerializer < ActiveModel::Serializer
  attributes :id, :building_id, :title, :description, :created_at, :updated_at
  has_many :users, embed: :ids, include: true 
end
