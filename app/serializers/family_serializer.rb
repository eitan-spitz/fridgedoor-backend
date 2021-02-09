class FamilySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :fridges, serializer: FridgeSerializer
end
