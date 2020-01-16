class Api::V1::BehavioursController < ApplicationController

    def index
        behaviours = Behaviour.all
        render json: behaviours
    end

end
