class FridgeItemSerializer < ActiveModel::Serializer
  ActiveModelSerializers.config.key_transform = :camel_lower
  attributes :id, :fridge_id, :item_id, :amount_num, :amount_type

  belongs_to :fridge, serializer: FridgeSerializer
  belongs_to :item, serializer: ItemSerializer
end
