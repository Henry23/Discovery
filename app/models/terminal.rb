class Terminal < ActiveRecord::Base
   has_many :empleados
   has_many :caminos
end
