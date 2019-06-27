class User < ApplicationRecord
  has_many :subscriptions
  has_many :tsus, :through => :subscriptions
  has_many :types, :through => :tsus
  has_secure_password

  validates :name, presence: true, length: {maximum: 40}
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6, maximum: 20}
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "looks like a fake email address!" },  length: {maximum: 75}
end
