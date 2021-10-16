class UserGrimoiresController < ApplicationController

    def index
        render json: UserGrimoire.all
    end
end
