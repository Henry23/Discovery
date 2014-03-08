class Paquete < ActiveRecord::Base
  belongs_to :recibo
  belongs_to :cliente
end
