class User < ActiveRecord::Base
  has_many :user_buildings
  has_many :buildings, through: :user_buildings
  has_many :subscriptions
  has_many :topics, through: :subscriptions
end
