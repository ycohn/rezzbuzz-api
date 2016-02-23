class User < ActiveRecord::Base

  # devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable
  has_many :user_buildings
  has_many :buildings, through: :user_buildings
  has_many :subscriptions
  has_many :topics, through: :subscriptions
  has_secure_password
  before_save :verify_authentication_token


  def self.authenticate(credentials)
    user = self.find_by(email: credentials[:email])
    user if user && user.authenticate(credentials[:password])
  end

  def verify_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_auth_token
    end
  end

  private

  def generate_auth_token
    loop do
      token = SecureRandom.urlsafe_base64(15)
      break token unless User.where(authentication_token: token).any?
    end
  end

end
