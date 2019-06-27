class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :zip, :country_id

  has_many :cps, :through => :country
  has_many :people, :through => :cps
  has_many :events
  has_many :ets, :through => :events
  has_many :types, :through => :ets
end
