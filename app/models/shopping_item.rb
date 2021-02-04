class ShoppingItem < ApplicationRecord
    belongs_to :shoppinglist
    belongs_to :item
end
