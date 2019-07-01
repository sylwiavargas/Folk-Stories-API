class Year < ApplicationRecord
  has_many :year_era
  has_many :events, through: :year_era

  validates :year, presence: true, numericality: { only_integer: true }
end
