class Pp < ApplicationRecord
  belongs_to :place
  belongs_to :person

  validates :person_id, presence: true
  validates :description_eng, presence: true

end
