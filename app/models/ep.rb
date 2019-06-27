class Ep < ApplicationRecord
  belongs_to :event
  belongs_to :person

  validates :event_id, presence: true
  validates :person_id, presence: true
end
