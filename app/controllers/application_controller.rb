class ApplicationController < ActionController::Base

include ActionController::HttpAuthentication::Token::ControllerMethods

  add_flash_types :error, :success
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception




  protected

  # Authenticate the user with token based authentication
  
  def current_user
  	@current_user ||= Beneficiario.all.first
   # @current_user ||= if session[:usuario_id]
   #   Usuario.find_by_id(session[:usuario_id])
  #  end

  end
  helper_method :current_user
   

  def has_logged?
    !current_user.nil?
  end
  def authorize
        unless has_logged?
          redirect_to root_url
        end
  end

  def block_access
    if current_user.present?
       redirect_to perfil_path
    end
  end
end