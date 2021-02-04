class Item < ApplicationRecord
    has_many :fridge_items
    has_many :fridges, through: :fridge_items

    has_many :shopping_items
    has_many :shoppinglists, through: :shopping_items
end
