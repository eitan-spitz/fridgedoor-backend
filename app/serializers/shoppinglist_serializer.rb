class ShoppinglistSerializer < ActiveModel::Serializer
  attributes :id, :name, :family_id
  has_many :shopping_items
  has_many :items, through: :shopping_items
end
