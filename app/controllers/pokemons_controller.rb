class PokemonsController < ApplicationController
    def new
        @pokemon = Pokemon.new
    end

    def create
        Pokemon.create({name:pokemon_params[:name], level:1, trainer_id:current_trainer.id, ndex:pokemon_params[:name], health: 100})
        redirect_to trainer_path(current_trainer.id)
    end
end
