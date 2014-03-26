class Camino < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :terminal
  belongs_to :bus
  has_many :recibos
  
 def validate
     unless Terminal.find_by_id(terminal_id_origen)
       errors.add(:terminal_id_origen, 'does not exist')
     end
     unless Terminal.find_by_id(terminal_id_destino)
       errors.add(:terminal_id_destino, 'does not exist')
     end
   end # validate
  
end
