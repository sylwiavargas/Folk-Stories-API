class Connection < ApplicationRecord
  belongs_to :person_one, :class_name => "Person"
  belongs_to :person_two, :class_name => "Person"

end
