class Cliente < ActiveRecord::Base
  has_many :recibos
  has_many :paquetes
  

 
end
