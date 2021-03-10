class ShoppinglistSerializer < ActiveModel::Serializer
  attributes :id, :name, :family_id
  has_many :shopping_items, serializer: ShoppingItemSerializer
  has_many :items, through: :shopping_items, serializer: ItemSerializer
end
