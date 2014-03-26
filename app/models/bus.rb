class Bus < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :empleado  
  has_many :caminos
 def validate
     unless Empleado.find_by_id(empleado_id)
       errors.add(:empleado_id, 'does not exist')
     end
   end # validate
    
    
end
