class Recibo < ActiveRecord::Base
  belongs_to :empleado
  belongs_to :cliente
  has_one :paquete
  has_one :camino

  validates :fecha_de_viaje, presence: true
 
end
