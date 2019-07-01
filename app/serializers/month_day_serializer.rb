class MonthDaySerializer < ActiveModel::Serializer
  attributes :id, :mdd, :month, :day

  has_many :events
end
