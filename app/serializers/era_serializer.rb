class EraSerializer < ActiveModel::Serializer
  attributes :id, :era

  has_many :year_era
end
