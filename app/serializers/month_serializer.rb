class MonthSerializer < ActiveModel::Serializer
  attributes :id, :month, :name_eng, :name_pl

  has_many :month_days
  has_many :days, through: :month_days
  has_many :events, through: :month_days
end
