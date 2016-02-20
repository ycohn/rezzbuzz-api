class Building < ActiveRecord::Base
  has_many :user_buildings
  has_many :users, through: :user_buildings
  has_many :topics
  validates :name, uniqueness: { message: "It looks like that building might already exist."}
end
