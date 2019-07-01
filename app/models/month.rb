class Month < ApplicationRecord
  has_many :month_days
  has_many :days, through: :month_days
  has_many :events, through: :month_days
end
