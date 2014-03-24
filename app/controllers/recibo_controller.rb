class ReciboController < ApplicationController
  def index
    @recibo = Recibo.new
    @camino = Camino.all 
  end
  def create 
    @recibo = Recibo.create(recibo_params)
   if @recibo.save
     redirect_to :controller=>'main'
   end
  end
  
   private
  
  def recibo_params
    params.require(:recibo).permit( :empleado_id, :cliente_id, :camino_id, :fecha_de_viaje, :tipo, :asiento)
 end
  
end
