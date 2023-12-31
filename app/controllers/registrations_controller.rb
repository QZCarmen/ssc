class RegistrationsController < Devise::RegistrationsController
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :address, :postal_code, :city, :province_id, :email, :password, :password_confirmation, :current_password, :phone) }
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
  end





end