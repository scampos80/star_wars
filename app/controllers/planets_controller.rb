class PlanetsController < ApplicationController
  def index
    @planets = Planet.order(:id).page(params[:page])
  end

  def show
    @planet = Planet.find(params[:id])
  end
end