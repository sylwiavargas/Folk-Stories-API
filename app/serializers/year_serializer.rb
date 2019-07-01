class YearSerializer < ActiveModel::Serializer
  attributes :id, :year, :era

  has_many :events
end
