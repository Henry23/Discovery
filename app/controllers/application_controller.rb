class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  
skip_before_filter :require_no_authentication  
before_filter :configure_permitted_parameters, if: :devise_controller?
  

  
  protected
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido,  :terminal_id, :sexo, :fecha_nacimiento, :fecha_inicio, :direccion, :profesion, :telefono, :nacionalidad, :administrador ) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :email, :password, :remember_me, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido,  :terminal_id, :sexo, :fecha_nacimiento, :fecha_inicio, :direccion, :profesion, :telefono, :nacionalidad, :administrador) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido,  :terminal_id,  :sexo, :fecha_nacimiento, :fecha_inicio, :direccion, :profesion, :telefono, :nacionalidad, :administrador ) }
    end
  
end
