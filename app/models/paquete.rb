class Paquete < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :recibo
  belongs_to :cliente
  def validate
     unless Recibo.find_by_id(recibo_id)
       errors.add(:recibo_id, 'does not exist')
     end
   end

end
