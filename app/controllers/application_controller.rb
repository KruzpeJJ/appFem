class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  def after_sign_out_path_for( null_session)
    user_session_path
  end
  protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:lastname,:bornDate,:admin,
                                                      :curp,:address,:municipio,
                                                      :IdMunicipio,:movil,:job,
                                                      :folio_af,:description])
 end
end
