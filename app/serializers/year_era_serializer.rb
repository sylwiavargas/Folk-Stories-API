class YearEraSerializer < ActiveModel::Serializer
  attributes :id, :year_id, :era_id

  has_many :events
end
