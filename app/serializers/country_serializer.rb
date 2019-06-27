class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :continent_id, 

  has_many :places
  has_many :cps
  has_many :people, :through => :cps
  has_many :events
  has_many :ets
  has_many :types, :through => :ets
end
