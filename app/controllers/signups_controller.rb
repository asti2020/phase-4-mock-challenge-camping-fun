class SignupsController < ApplicationController


    def create
        signups = Signup.create!(signup_params)
        activity = Activity.find(params[:activity_id])
        render json: activity, Serializer: ActivitySerializer, status: :created
    end
    
    
private 
    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
