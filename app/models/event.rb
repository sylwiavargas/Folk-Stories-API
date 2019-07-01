class Event < ApplicationRecord
  belongs_to :place
  belongs_to :country
  belongs_to :month_day
  belongs_to :year

  has_many :ets
  has_many :types, :through => :ets
  has_many :eps
  has_many :people, :through => :eps

  validates :title_eng, presence: true
  validates :description_eng, presence: true
  validates :mmddyyy, presence: true, length: {is: 8}
end
