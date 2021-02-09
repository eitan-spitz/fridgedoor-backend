class FridgeSerializer < ActiveModel::Serializer
  attributes :id, :name, :family_id
  has_many :fridge_items, serializer: FridgeItemSerializer
  # has_many :items, through: :fridge_items, serializer: ItemSerializer
end
