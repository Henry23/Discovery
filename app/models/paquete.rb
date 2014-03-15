class Paquete < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :recibo
  belongs_to :cliente
  
  validates_presenece_of :recibo_id
  validates_presenece_of :cliente_id
  
  # Validate is called before save
def validate
     unless Recibo.find_by_id(recibo_id)
       errors.add(:terminal_id, 'does not exist')
     end
   end
end
