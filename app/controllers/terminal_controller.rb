class TerminalController < ApplicationController

  def index 
    @terminals = Terminal.all
  end
  
  def new
    @terminal = Terminal.new
  end
    
  def create
    @terminal =Terminal.create(terminal_params)
    #@terminal = Terminal.new(params[:terminal])
   if @terminal.save
     redirect_to :controller=>'terminal'
   else
   end
    
  end
  
  private
  
  def terminal_params
     params.require(:terminal).permit(:nombre, :direccion, :telefono)
 end
  
end
