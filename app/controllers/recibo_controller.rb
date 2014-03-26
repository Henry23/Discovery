class ReciboController < ApplicationController
 
  def index
    @recibo = Recibo.new
    @camino = Camino.all 
    @i= 1
    @j= 0
    @asientos= Array.new  
    while @i < 49
      @asientos[@j] = @i
       @i += 1
      @j += 1
    end
  end
  
  def create 
    @recibo = Recibo.create(recibo_params)
    
    @fecha_viaje = Recibo.find_by_fecha_de_viaje(params[:fecha_de_viaje])
    @ruta = Recibo.find_by_camino_id(params[:camino_id] )  
    
   if @recibo.save
     redirect_to :controller=>'main'
   end
  end
  
   private
  
  def recibo_params
    # params.require(:user) throws an error if params[:user] is nil
    params.require(:recibo).permit( :empleado_id, :cliente_id, :camino_id, :fecha_de_viaje, :tipo, :asiento)
 end
  
  
  
end
