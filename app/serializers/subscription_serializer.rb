class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id

  has_many :tsus
  has_many :types, :through => :tsu
end
