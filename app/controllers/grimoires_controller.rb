class GrimoiresController < ApplicationController

    def index
        render json: Grimoire.all
    end

end
