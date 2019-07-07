class PpSerializer < ActiveModel::Serializer
  attributes :id, :person_id, :description_eng, :description_pl, :place_id
end
