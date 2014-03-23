class ReciboController < ApplicationController
  def index
    @recibo = Recibo.new
    @camino = Camino.all 
  end
  def create 
  end
end
