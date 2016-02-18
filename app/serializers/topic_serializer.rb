class TopicSerializer < ActiveModel::Serializer
  attributes :id, :building_id, :title, :description, :created_at, :updated_at 
end
