class Continent < ApplicationRecord
  has_many :countries
  has_many :events, :through => :countries
  has_many :places, :through => :countries
  has_many :cps, :through => :countries
  has_many :people, :through => :cps
  
end
