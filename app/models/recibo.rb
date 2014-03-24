class Recibo < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :empleado
  belongs_to :cliente
  has_one :paquete
  has_one :camino
  
  #validates_presenece_of :empleado_id
  #validates_presenece_of :cliente_id
  #validates_presenece_of :camino_id
  
  # Validate is called before save
   def validate
     unless Empleado.find_by_id(empleado_id)
       errors.add(:empleado_id, 'does not exist')
     end
     unless Cliente.find_by_id(cliente_id)
       errors.add(:cliente_id, 'does not exist')
     end
       unless Camino.find_by_id(camino_id)
       errors.add(:camino_id, 'does not exist')
     end
     
   end
 
end
