class Event < ApplicationRecord
  belongs_to :place
  belongs_to :country

  has_many :ets
  has_many :types, :through => :ets
  has_many :eps
  has_many :people, :through => :eps

end
