class Empleado < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
   #protect_from_forgery with: :exception
   #before_filter :configure_permitted_parameters, if: :devise_controller?
  
  belongs_to :terminal
  has_one :bus
  has_many :recibos
  
  def validate
     unless Terminal.find_by_id(terminal_id)
       errors.add(:terminal_id, 'does not exist')
     end
   end
  
  

end

    
      