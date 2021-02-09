class FridgesController < ApplicationController
    def index
        fridges = Fridge.all
        render json: fridges
    end
end
