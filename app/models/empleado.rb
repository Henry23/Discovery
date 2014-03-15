class Empleado < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  include ActiveModel::Validations
  belongs_to :terminal
  has_one :bus
  has_many :recibo
  
  #validates_presenece_of :terminal
  
  # Validate is called before save
   def validate
     unless Termina.find_by_id(terminal_id)
       errors.add(:terminal_id, 'does not exist')
     end
   end
 
end
