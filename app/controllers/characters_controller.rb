class CharactersController < ApplicationController
  def index
    @characters = Character.order(:id).page(params[:page])
  end

  def show
    @character = Character.find(params[:id])
  end

  #GET /characters/search_results
  def search_results
    @query = params[:query]
    @characters = Character.where('name LIKE ?', "%#{@query}%").page(params[:page])
  end
end