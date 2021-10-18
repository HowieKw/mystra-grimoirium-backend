class UserGrimoiresController < ApplicationController

    def index
        render json: current_user.user_grimoires.all
    end

    def create
        user_grim = current_user.user_grimoires.new(user_grim_params)
        if user_grim.save
            render json: user_grim, status: :created
        else
            render json: user_grim.errors, status: :unprocessable_entity
        end
    end

    def destroy
        user_grim = current_user.user_grimoires.find(params[:id])
        user_grim.destroy
        render json: user_grim, status: :ok 
    end

    private

    def user_grim_params
        params.permit(:grimoire_id)
    end
    
end
