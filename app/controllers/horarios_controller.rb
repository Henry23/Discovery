class HorariosController < ApplicationController
  def index
    @camino = Camino.all
    @caminos = Camino.all
  end
end
