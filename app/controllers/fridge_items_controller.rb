class FridgeItemsController < ApplicationController
    def destroy
        fridge_item = FridgeItem.find_by(id: params[:id])
        fridge_item.destroy
        render json: { success: 'FridgeItem deleted successfully' }
    end
end
