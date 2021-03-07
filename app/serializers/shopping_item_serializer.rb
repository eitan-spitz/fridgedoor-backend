class ShoppingItemSerializer < ActiveModel::Serializer
  ActiveModelSerializers.config.key_transform = :camel_lower
  attributes :id, :shoppinglist_id, :item_id , :amount_num, :amount_type

  belongs_to :shoppinglist, serializer: ShoppinglistSerializer
  belongs_to :item, serializer: ItemSerializer
end
