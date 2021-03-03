class FamiliesController < ApplicationController
    def show
        fam = Family.find_by(id: params[:id])
        render json: fam, include: 'fridges,fridges.*,shoppinglists,shoppinglists.*'
    end
end
