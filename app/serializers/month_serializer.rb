class MonthSerializer < ActiveModel::Serializer
  attributes :id
  has_many :events
end
