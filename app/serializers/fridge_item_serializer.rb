class FridgeItemSerializer < ActiveModel::Serializer
  attributes :id, :fridge_id, :item_id

  belongs_to :fridge, serializer: FridgeSerializer
  belongs_to :item, serializer: ItemSerializer
end
