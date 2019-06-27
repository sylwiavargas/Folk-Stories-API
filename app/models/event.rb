class Event < ApplicationRecord
  belongs_to :place
  belongs_to :country

  has_many :ets
  has_many :types, :through => :ets
  has_many :eps
  has_many :people, :through => :eps

  validates :description, presence: true
  validates :year, presence: true
  validates :month, presence: true
  validates :day, presence: true
end
