class Subscription < ApplicationRecord
  belongs_to :user

  has_many :tsus
  has_many :types, :through => :tsu

  validates :name, presence: true
  validates :user_id, presence: true
end
