class TypeSerializer < ActiveModel::Serializer
  attributes :id, :name_eng, :name_pl

  has_many :ets
  has_many :events, :through => :ets
  has_many :tsus
  has_many :subscriptions, :through => :tsus
end
