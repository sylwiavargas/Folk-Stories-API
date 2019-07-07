class Place < ApplicationRecord
  belongs_to :country

  has_many :cps, :through => :country
  has_many :pps
  has_many :people, :through => :pps
  has_many :events
  has_many :ets, :through => :events
  has_many :types, :through => :ets

  validates :name_eng, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
