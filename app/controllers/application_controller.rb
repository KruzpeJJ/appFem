class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  def after_sign_out_path_for( null_session)
    user_session_path
  end
end
