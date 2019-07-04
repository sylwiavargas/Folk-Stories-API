class MonthDaySerializer < ActiveModel::Serializer
  attributes :id, :mdd, :month, :day

  has_many :events
  # has_many :ets, through: :events
  # has_many :types, through: :ets
end
