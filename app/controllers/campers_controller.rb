class CampersController < ApplicationController
    # rescue_from ActiveRecord::, with: :render_unprocessable_entity_response
    def index
        campers = Camper.all
        render json: campers, status: :ok
    end

    def show
        campers = Camper.find(params[:id])
        render json: campers, serializer: CamperActivitieSerializer
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end


private

        def camper_params
            params.permit(:name, :age)

        end

        # def render_not_found_response 
        #     render json: { error: errors.message }, status: :not_found
        # end

        # def render_unprocessable_entity_response(invalid)
        #     render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
        # end

end
