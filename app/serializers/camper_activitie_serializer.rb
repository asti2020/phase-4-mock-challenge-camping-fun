class CamperActivitieSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :difficulty
  belongs_to :camper
end
