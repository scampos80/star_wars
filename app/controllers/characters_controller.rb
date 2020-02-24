class CharactersController < ApplicationController
  def index
    @characters = Character.order(:id).page(params[:page])
  end

  def show
    @character = Character.find(params[:id])
  end
end