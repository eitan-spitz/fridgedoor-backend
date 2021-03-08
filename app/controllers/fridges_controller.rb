class FridgesController < ApplicationController
    def index
        fridges = Fridge.all
        render json: fridges
    end

    def show
        fridge = Fridge.find_by(id: params[:id])
        render json: fridge
    end
end
