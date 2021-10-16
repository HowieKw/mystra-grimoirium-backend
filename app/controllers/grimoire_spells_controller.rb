class GrimoireSpellsController < ApplicationController

    def index
        render json: GrimoireSpell.all
    end

end
