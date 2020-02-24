class RacesController < ApplicationController
  def index
    @races = Race.order(:id).page(params[:page])
  end

  def show
    @race = Race.find(params[:id])
  end
end