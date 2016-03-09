class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :bio, :picture, :created_at, :updated_at, :topic_ids
  has_many :buildings, embed: :ids, include: true
end
