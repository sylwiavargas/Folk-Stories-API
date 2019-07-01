class MonthDaySerializer < ActiveModel::Serializer
  attributes :id, :mmdd, :month, :day

  has_many :events
end
