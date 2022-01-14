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
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[user profilable_type first_name last_name second_name city_id gender])
    end

    def sign_up_client_profile_params
      params.require(:user).permit(%i[country_id description])
    end

    def sign_up_realtor_profile_params
      params.require(:user).permit(%i[registration_number employment_date])
    end

    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: %i[user profilable_type first_name last_name second_name city_id gender])
    end
  end
end
