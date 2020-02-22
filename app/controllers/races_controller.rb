class RacesController < ApplicationController
  def index
    @races = Race.order(:id)
  end

  def show
    @race = Race.find(params[:id])
  end
end