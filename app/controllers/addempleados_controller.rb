class AddempleadosController < ApplicationController
  def index
    @terminal = Terminal.all
  end
end
