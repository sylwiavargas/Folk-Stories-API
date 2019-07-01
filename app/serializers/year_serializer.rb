class YearSerializer < ActiveModel::Serializer
  attributes :id, :year

  has_many :year_eras
  has_many :events, through: :year_eras
end
