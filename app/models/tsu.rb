class Tsu < ApplicationRecord
  belongs_to :type
  belongs_to :subscription

  validates :type_id, presence: true
  validates :subscription_id, presence: true
end
