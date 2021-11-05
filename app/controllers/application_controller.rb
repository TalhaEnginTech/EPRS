class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :cnic, :role, :joindate])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :cnic, :role, :joindate])
  end
end
