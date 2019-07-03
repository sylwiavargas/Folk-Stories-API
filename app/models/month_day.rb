class MonthDay < ApplicationRecord
  belongs_to :day
  belongs_to :month

  has_many :events
  has_many :ets, through: :events
  has_many :types, through: :events

  def to_param
    mdd
  end
end
