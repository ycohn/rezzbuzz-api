class Topic < ActiveRecord::Base
  belongs_to :building
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :messages
end
