class Shoppinglist < ApplicationRecord
    belongs_to :family

    has_many :shopping_items
    has_many :items, through: :shopping_items
end
