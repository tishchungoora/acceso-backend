class Api::V1::CardsController < ApplicationController

    def index
        cards = Card.ApplicationController
        render json: cards
    end

end
