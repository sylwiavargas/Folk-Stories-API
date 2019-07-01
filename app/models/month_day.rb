class MonthDay < ApplicationRecord
  belongs_to :day
  belongs_to :month

  has_many :events
end
