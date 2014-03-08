class Bus < ActiveRecord::Base
  belongs_to :empleado
  has_many :rutas
end
