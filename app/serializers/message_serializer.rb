class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :topic_id, :content, :created_at, :updated_at 
end
