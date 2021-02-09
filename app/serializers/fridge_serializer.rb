class FridgeSerializer < ActiveModel::Serializer
  attributes :id, :name, :family_id
  has_many :fridge_items
  has_many :items, through: :fridge_items
end
