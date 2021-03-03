class ShoppinglistsController < ApplicationController
    def index
        shopping_lists = Shoppinglist.all
        render json: shopping_lists
    end
end
