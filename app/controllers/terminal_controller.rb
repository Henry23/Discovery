class TerminalController < ApplicationController

  def index 
    @terminals = Terminal.all
  end
  
  def new
    @terminal = Terminal.new
  end
    
  def create
    @terminal =Terminal.create(terminal_params)
   if @terminal.save
     redirect_to :controller=>'terminal'
   end
    
  end
  
  private
  
  def terminal_params
     params.require(:terminal).permit(:nombre, :direccion, :telefono)
 end
end


