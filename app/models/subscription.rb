class Subscription < ApplicationRecord
  belongs_to :user

  has_many :tsus
  has_many :types, :through => :tsu

end
