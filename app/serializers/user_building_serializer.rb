class UserBuildingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :building_id,:created_at, :updated_at

end
