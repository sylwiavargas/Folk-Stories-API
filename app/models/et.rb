class Et < ApplicationRecord
  belongs_to :event
  belongs_to :type

  validates :event_id, presence: true
  validates :type_id, presence: true
end
