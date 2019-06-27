class Cp < ApplicationRecord
  belongs_to :country
  belongs_to :person

  validates :country_id, presence: true
  validates :person_id, presence: true
end
