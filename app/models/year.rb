class Year < ApplicationRecord
  has_many :year_eras
  has_many :events, through: :year_eras

  validates :year, presence: true, numericality: { only_integer: true }
end
