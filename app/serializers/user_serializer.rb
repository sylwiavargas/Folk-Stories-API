class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest, :email, :zip, :status

  has_many :subscriptions
  has_many :tsus, :through => :subscriptions
  has_many :types, :through => :tsus
end
