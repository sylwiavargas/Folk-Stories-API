class YearSerializer < ActiveModel::Serializer
  attributes :id, :year

  has_many :year_era
  has_many :events, through: :year_era
end
