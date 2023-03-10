class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, :authenticate_user!, if: :devise_controller?


  def after_sign_in_path_for(resource)
    vehicles_path(current_user) # your path
  end

  protected

  def configure_permitted_parameters
    # binding.pry
     devise_parameter_sanitizer.permit(:sign_up, keys: [:firstName, :lastName,:is_Admin])
  end
end
