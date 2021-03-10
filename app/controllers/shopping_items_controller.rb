class ShoppingItemsController < ApplicationController
    def destroy
        shopping_item = ShoppingItem.find_by(id: params[:id])
        shopping_item.destroy
        render json: { success: 'ShoppingItem deleted successfully' }
    end

    def create
        items = ShoppingItem.where(item_id: shopping_item_params[:item_id])
        if items
            shopping_item = items.find_by(shoppinglist_id: shopping_item_params[:shoppinglist_id])
            if shopping_item
                new_amount = shopping_item[:amount_num].to_i + shopping_item_params[:amount_num].to_i
                shopping_item.update(amount_num: new_amount)
                render json: shopping_item
            else
                new_shopping_item = ShoppingItem.create!(shopping_item_params)
                render json: new_shopping_item
            end
        else
            new_shopping_item = ShoppingItem.create!(shopping_item_params)
            render json: new_shopping_item
        end
    end

    private
    def shopping_item_params
        params.require(:shopping_item).permit(:shoppinglist_id, :item_id, :amount_num, :amount_type)
    end
end
