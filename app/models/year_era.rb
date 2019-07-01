class YearEra < ApplicationRecord
  belongs_to :year
  belongs_to :era

  has_many :events

end
