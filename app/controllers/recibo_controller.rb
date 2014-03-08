class ReciboController < ApplicationController
  def index
    @cliente = Cliente.all
    @terminal = Terminal.all
  end
end
