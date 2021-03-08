class FridgeItemsController < ApplicationController
    def destroy
        fridge_item = FridgeItem.find_by(id: params[:id])
        fridge_item.destroy
        render json: { success: 'FridgeItem deleted successfully' }
    end

    def create
        items = FridgeItem.where(item_id: fridge_item_params[:item_id])
        if items
            fridge_item = items.find_by(fridge_id: fridge_item_params[:fridge_id])
            if fridge_item
                render json: fridge_item
            else
                new_fridge_item = FridgeItem.create!(fridge_item_params)
                render json: new_fridge_item
            end
        else
            new_fridge_item = FridgeItem.create!(fridge_item_params)
            render json: new_fridge_item
        end
    end

    private
    def fridge_item_params
        params.require(:fridge_item).permit(:fridge_id, :item_id, :amount_num, :amount_type)
    end
end
