class ConnectionSerializer < ActiveModel::Serializer
  attributes :id, :relationship, :person_one_id, :person_two_id

  
end
