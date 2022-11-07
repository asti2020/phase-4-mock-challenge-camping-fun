class CampersController < ApplicationController

    def index
        campers = Camper.all
        render json: campers, status: :found
    end

    def show
        campers = Camper.find(params[:id])
        render json: campers, status: :found
    end
end
