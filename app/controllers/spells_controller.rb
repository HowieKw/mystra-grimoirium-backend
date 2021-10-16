class SpellsController < ApplicationController
    
    def index
        render json: Spell.all
    end
    
end
