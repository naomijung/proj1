class PokemonsController < ApplicationController
  def new
    # @trainer = current_trainer
    # t = Trainer.new
    # @trainer = t
    pokemon = Pokemon.new
    @pokemon = pokemon
  end

  def create
    pokemon = Pokemon.new
    pokemon.name = params[:pokemon][:name]
    pokemon.health = 100
    pokemon.level = 1
    pokemon.trainer_id = current_trainer[:id]
    if pokemon.valid?
      pokemon.save
      redirect_to "/trainers/" + current_trainer[:id].to_s
    else
      redirect_to "/new"
      flash[:error] = pokemon.errors.full_messages.to_sentence
    end
  end

  def capture
     p = Pokemon.find(params[:id])
     p.trainer_id = current_trainer[:id]
     p.save
     redirect_to "/"
  end

  def damage
    p = Pokemon.find(params[:id])
    p.health = p.health - 10
    if p.health > 0
      p.save
    else
      p.destroy
    end
    redirect_to "/trainers/" + p.trainer_id.to_s
  end


end
