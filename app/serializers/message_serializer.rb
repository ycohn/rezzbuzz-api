class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :topic_id, :content, :created_at, :updated_at 
  belongs_to :user, embed: :ids, include: true
  belongs_to :topic, embed: :ids, include: true
end
