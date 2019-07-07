class Pp < ApplicationRecord
  belongs_to :place
  belongs_to :person

  validates :country_id, presence: true
  validates :person_id, presence: true
  validates :description_eng, presence: true

end
