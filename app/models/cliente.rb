class Cliente < ActiveRecord::Base
  has_many :recibos
  has_many :paquetes
  #set_primary_key :id
end
