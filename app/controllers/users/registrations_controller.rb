# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_account_update_params, only: [:update]

    def create
      b = ClientProfile.new
      b.save
      a = build_resource(configure_sign_up_params)
      a.profilable_id = b.id
      a.profilable_type = 'ClientProfile'
      binding.pry
      super
    end

    protected

    def configure_sign_up_params
      binding.pry
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[email password avatar first_name last_name second_name date_of_birth gender profilable_type profilable_attributes])
    end

    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: %i[email password avatar first_name last_name second_name date_of_birth gender profilable_type profilable_attributes])
    end
  end
end
