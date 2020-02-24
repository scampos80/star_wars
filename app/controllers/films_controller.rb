class FilmsController < ApplicationController
  def index
    @films = Film.order(:id).page(params[:page])
  end

  def show
    @film = Film.find(params[:id])
  end
end
