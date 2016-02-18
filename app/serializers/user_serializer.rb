class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :bio, :picture, :created_at, :updated_at 
  has_many :buildings, embed: :ids, include: true
  has_many :topics, embed: :ids, include: true
end
