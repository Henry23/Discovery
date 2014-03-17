class AddempleadosController < ApplicationController
  def index
    @empleados = Empleado.new
  end

  def new
    @terminals = Terminal.all
    @empleado = Empleado.new
  end
    
  def create
    @empleado =Empleado.create(empleado_params)
   if @terminal.save
     redirect_to :controller=>'addempleados'
   else
   end
  end
  
  private
  def empleado_params
     params.require(:terminal).permit(:email, :encrypted_password, :primer_nombre, :segundo_nombre, 
       :primer_apellido, :segundo_apellido, :terminal_id, :sexo, :primer_apellido, :segundo_apellido, 
       :fecha_nacimiento, :fecha_inicio, :direccion, :profesion, :telefono, :nacionalidad, :administrador)
 end
end
  

