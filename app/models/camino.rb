class Camino < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :terminal
  belongs_to :bus
  has_many :recibo
  
  #validates_presence_of :bus_id
  #validates_presence_of :terminal_id_origen
  #validates_presenece_of :terminal_id_destino
  
  # Validate is called before save
   def validate
     unless Terminal.find_by_id(terminal_id_origen)
       errors.add(:terminal_id_origen, 'does not exist')
     end
     unless Terminal.find_by_id(terminal_id_destino)
       errors.add(:terminal_id_destino, 'does not exist')
     end
   end # validate
  
end
