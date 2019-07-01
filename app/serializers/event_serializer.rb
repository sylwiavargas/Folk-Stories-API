class EventSerializer < ActiveModel::Serializer
  attributes :id, :title_eng, :title_pl, :description_eng, :description_pl, :year_era_id, :month_day_id, :month_id, :day_id, :mmddyyy, :read_more_eng, :read_more_pl, :published, :place_id, :country_id

  has_many :ets
  has_many :types, :through => :ets
  has_many :eps
  has_many :people, :through => :eps
end
