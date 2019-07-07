class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :birth, :death, :bio_pl, :bio_eng, :read_more_eng, :read_more_pl, :quote_pl, :quote_eng, :picture

  has_many :cps
  has_many :countries, :through => :cps
  has_many :eps
  has_many :events, :through => :eps
  has_many :pps
  has_many :places, :through => :pps


end

# has_many :connections
# has_many :person_ones, :through => :connections
# has_many :outgoings, :through => :connections
