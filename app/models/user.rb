class User < ApplicationRecord
  has_many :subscriptions
  has_many :tsus, :through => :subscriptions
  has_many :types, :through => :tsus
end
