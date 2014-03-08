class Recibo < ActiveRecord::Base
  belongs_to :empleado
  belongs_to :cliente
  belongs_to :ruta
  has_one :paquete
end
