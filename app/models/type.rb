class Type < ApplicationRecord

  has_many :ets
  has_many :events, :through => :ets
  has_many :tsus
  has_many :subscriptions, :through => :tsus

  validates :name_eng, presence: true
end
