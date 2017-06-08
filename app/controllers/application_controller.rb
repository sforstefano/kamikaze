class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	if user_signed_in?
  		settings_path
  	elsif admin_user_signed_in?
  		admin_root_path
  	end
  end
   before_filter :sanitize_devise_params, if: :devise_controller?
  def sanitize_devise_params
  	devise_parameter_sanitizer.permit(:sign_up, keys:[:username])
  end

  
end
