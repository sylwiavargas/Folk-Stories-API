class Day < ApplicationRecord
  has_many :month_days
  has_many :months, through: :month_days
  has_many :events
end
