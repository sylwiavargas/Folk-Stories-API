class Person < ApplicationRecord

has_many :connections
has_many :person_ones, :through => :connections
has_many :person_twos, :through => :connections
has_many :cps
has_many :countries, :through => :cps
has_many :eps
has_many :events, :through => :eps
has_many :pps
has_many :places, :through => :pps

validates :name, presence: true
validates :birth, presence: true
validates :bio_eng, presence: true
end
