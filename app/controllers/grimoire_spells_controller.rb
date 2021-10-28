class GrimoireSpellsController < ApplicationController

    def index
        render json: GrimoireSpell.all
    end

    def create
        grim_spells = GrimoireSpell.new(grim_spell_params)
        if grim_spells.save
            render json: grim_spells, status: :created
        else
            render json: grim_spells.errors, status: :unprocessable_entity
        end
    end

    def destroy
        grim_spells = GrimoireSpell.find(params[:id])
        grim_spells.destroy
        render json: grim_spells, status: :ok
    end

    private

    def grim_spell_params
        params.permit(:grimoire_id, :spell_id)
    end

end
