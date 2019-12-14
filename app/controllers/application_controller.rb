class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    case resource
    when Carrier
      carrier_joint_index_path
    when Shipper
      shipper_joint_index_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:loginID, :personal_name, :company_name, :trigger, :address, :phone_number])
  end
end
