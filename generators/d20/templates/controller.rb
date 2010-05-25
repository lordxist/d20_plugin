class GameCharactersController < ApplicationController
  # POST /game_characters
  def create
    @game_character = GameCharacter.new(params[:game_character)
    @game_character.save

    redirect_to :back
  end

  # PUT /game_characters
  def update
    @game_character = GameCharacter.find(params[:id])
    @game_character.update_attributes(params[:game_character])

    redirect_to :back
  end

  # DELETE /game_characters
  def destroy
    @game_character = GameCharacter.find(params[:id])
    @game_character.destroy

    redirect_to :back
  end
end
