class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :topic_id, :created_at, :updated_at 
end