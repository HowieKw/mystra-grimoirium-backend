class GrimoiresController < ApplicationController

    def index
        render json: Grimoire.all, include: ['added_spells.dnd_classes', 'added_spells.tags', 'added_spells.grimoire_spells']
    end

    def created_grims
        render json: users_grimoire, status: :ok
    end

    def show
        render json: find_grimoire
    end

    def create
        new_grimoire = users_grimoire.new(grimoire_params)
        if new_grimoire.save 
            render json: new_grimoire, status: :created
        else
            render json: new_grimoire.errors, status: :unprocessable_entity
        end
    end

    def update
        update_grim = current_user.grimoires.find(params[:id])
        if update_grim
            update_grim.update(grim_update_params)
            render json: update_grim, status: :accepted
        else
            render json: {error: find_grimoire.errors.full_messages}, status: :not_found
        end
    end

    private
    
    def find_grimoire
        grimoire = Grimoire.find(params[:id])
    end

    def users_grimoire
        current_user.grimoires
    end

    def grimoire_params
        params.permit(:title, :image)
    end

    def grim_update_params
        params.permit(:title)
    end

end
