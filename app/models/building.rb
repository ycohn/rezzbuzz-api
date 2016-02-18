class Building < ActiveRecord::Base
  has_many :user_buildings
  has_many :users, through: :user_buildings
  has_many :topics
end
