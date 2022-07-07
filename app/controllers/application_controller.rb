class ApplicationController < ActionController::Base
  
  before_action :configure_pemitted_parameters, if: :devise_controller?
  
   def after_sign_in_path_for(resource)
     post_images_path
   end
  
   def after_sign_out_path_for(resourse)
     about_path
   end
  
    protected
  
    def configure_pemitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

end