class SpellsController < ApplicationController
    
    def index
        render json: Spell.all
    end

    def show
        render json: find_spell
    end
    
    private

    def find_spell
        spell = Spell.find(params[:id])
    end

end
