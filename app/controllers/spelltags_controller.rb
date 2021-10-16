class SpelltagsController < ApplicationController

    def index
        render json: Spelltag.all
    end

end
