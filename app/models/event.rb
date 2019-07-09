class Event < ApplicationRecord
  belongs_to :place, optional: true
  belongs_to :country, optional: true
  belongs_to :month_day, optional: true
  belongs_to :year_era, optional: true
  belongs_to :month, optional: true
  belongs_to :day, optional: true

  has_many :ets
  has_many :types, :through => :ets
  has_many :eps
  has_many :people, :through => :eps

  validates :title_eng, presence: true
  validates :description_eng, presence: true
end
