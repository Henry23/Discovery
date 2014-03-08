class MainController < ApplicationController  
  def index
   @user = params[:user_username]
   @contrasena = params[:user_password]
   
    @empleado = Empleado.find_by_usuario(@user)
    @empleados = Empleado.all    
   # if @empleado == '12345'     
     #redirect_to :controller=>'signin'
   # else 
    #  flash[:error] = 'Invalid email/password combination' 
   # end
  #end 
  end
end
