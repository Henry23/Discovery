class Empleado < ActiveRecord::Base
  belongs_to :terminal
  has_one :bus
  has_many :recibos
  #set_primary_key :empleado_id
end
