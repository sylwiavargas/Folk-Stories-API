class Country < ApplicationRecord
  belongs_to :continent

  has_many :places
  has_many :cps
  has_many :people, :through => :cps
  has_many :events
  has_many :ets
  has_many :types, :through => :ets

  validates :name_eng, presence: true
  validates :continent_id, presence: true

end
