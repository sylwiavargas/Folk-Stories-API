class Connection < ApplicationRecord
  belongs_to :person_one, :class_name => "Person"
  belongs_to :person_two, :class_name => "Person"

  validates :person_one_id, presence: true
  validates :person_two_id, presence: true
  validates :relationship, presence: true
end
 
