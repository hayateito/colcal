class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
      before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) << :combination_key
    # sign_upのときに、group_keyも許可する
    devise_parameter_sanitizer.for(:sign_up) << :combination_key
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :tanto
    devise_parameter_sanitizer.for(:sign_up) << :sex
    devise_parameter_sanitizer.for(:sign_up) << :birthday
    devise_parameter_sanitizer.for(:sign_up) << :heightweight
    devise_parameter_sanitizer.for(:sign_up) << :blood
    devise_parameter_sanitizer.for(:sign_up) << :graduate
    devise_parameter_sanitizer.for(:sign_up) << :hobby
    devise_parameter_sanitizer.for(:sign_up) << :school
    devise_parameter_sanitizer.for(:sign_up) << :debut
    #account_updateのときに、group_keyも許可する
    devise_parameter_sanitizer.for(:account_update) << :combination_key
  end
end