class Year < ApplicationRecord
  has_many :events

  validates :year, presence: true, length: {is: 4}, numericality: { only_integer: true }
end
