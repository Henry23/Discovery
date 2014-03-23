class ClienteController < ApplicationController
  def new
    @cliente = Cliente.new
  end
  def create
    @cliente =Cliente.create(cliente_params)
   if @cliente.save
     redirect_to :controller=>'recibo'
   end
    
  end
  
  private
  
  def cliente_params
    params.require(:cliente).permit(:id, :documento, :nacionalidad, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :sexo, 
      :fecha_Nacimiento, :correo_electronico, :telefono)
    
 end
end
