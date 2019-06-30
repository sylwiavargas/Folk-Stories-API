class Person < ApplicationRecord

has_many :connections
has_many :person_ones, :through => :connections
has_many :person_twos, :through => :connections
has_many :cps
has_many :countries, :through => :cps
has_many :places, :through => :countries
has_many :eps
has_many :events, :through => :eps

validates :name_eng, presence: true
validates :death, presence: true
validates :birth, presence: true
validates :bio_eng, presence: true
end
