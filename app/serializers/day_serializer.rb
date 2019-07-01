class DaySerializer < ActiveModel::Serializer
  attributes :id, :day

  has_many :month_days
  has_many :events
end
