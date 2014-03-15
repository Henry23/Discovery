class HorariosController < ApplicationController
  def index
    @camino = Camino.all
  end
end
