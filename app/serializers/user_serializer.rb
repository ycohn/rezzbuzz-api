class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email, :bio, :picture, :created_at, :updated_at 
end
