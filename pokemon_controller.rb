class PokemonController < ApplicationController
    
    def capture
      tempPokemon = Pokemon.where(id:params[:id])
      tempPokemon.update(trainer_id:current_trainer.id)
      redirect_to '/'
    end

    def damage
      tempPokemon = Pokemon.find(params[:id])
      tempHealth = tempPokemon.health - 10
      if tempHealth <= 0
        tempPokemon.destroy
      else
        tempPokemon.update(health:tempHealth)
      end
      tempPokemon.save
      redirect_to trainer_path(tempPokemon.trainer_id) 
    end
  
end
