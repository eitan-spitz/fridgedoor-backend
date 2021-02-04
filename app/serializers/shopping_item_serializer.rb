class ShoppingItemSerializer < ActiveModel::Serializer
  attributes :id, :shoppinglist_id, :item_id
end
