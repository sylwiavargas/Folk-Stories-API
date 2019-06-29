class User < ApplicationRecord
  has_many :subscriptions
  has_many :tsus, :through => :subscriptions
  has_many :types, :through => :tsus
  has_secure_password

  validates :name, presence: true, length: {maximum: 40}
  validates :username, presence: true, uniqueness: { message: "Someone has already taken this username." }
  validates :password, presence: true, length: {minimum: 6, maximum: 20}, uniqueness: true
  validates :email, presence: true, , uniqueness: { message: "Someone has already used this email address." }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "There's something funky with your email address!" },  length: {maximum: 75}
end
