class ConnectionSerializer < ActiveModel::Serializer
  attributes :id, :relationship, :person_one, :person_two
  
end
