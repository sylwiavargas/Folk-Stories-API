class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :year, :month, :day, :read_more, :language, :published, :place_id, :country_id

  has_many :ets
  has_many :types, :through => :ets
  has_many :eps
  has_many :people, :through => :eps
end
