class Ruta < ActiveRecord::Base
  belongs_to :terminal
  belongs_to :bus
  has_one :recibo
end
