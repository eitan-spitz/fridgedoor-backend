class ItemsController < ApplicationController

    def create
        byebug
        item = Item.find_by(fdc_id: item_params[:fdc_id])
        if item 
            render json: item
        else
            new_item = Item.create!(item_params)
            render json: new_item
        end
    end

    private
    def item_params
        params.require(:item).permit(:fdc_id, :fdc_description, :data_type)
    end
end
