# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_account_update_params, only: [:update]

    def create
      if sign_up_params[:profilable_type] == 'ClientProfile'
        client_profile = ClientProfile.create(sign_up_client_profile_params)
        user_sign_up_params = sign_up_params.merge(profilable_id: client_profile.id)
      else
        realtor_profile = RealtorProfile.create(sign_up_realtor_profile_params)
        user_sign_up_params = sign_up_params.merge(profilable_id: realtor_profile.id)
      end
      build_resource(user_sign_up_params)
      resource.save
      yield resource if block_given?
      if resource.persisted?
        if resource.active_for_authentication?
          set_flash_message! :notice, :signed_up
          sign_up(resource_name, resource)
          respond_with resource, location: after_sign_up_path_for(resource)
        else
          set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
          expire_data_after_sign_in!
          respond_with resource, location: after_inactive_sign_up_path_for(resource)
        end
      else
        clean_up_passwords resource
        set_minimum_password_length
        resource.errors.full_messages.each { |x| flash[:notice] = x }
      end
    end

    protected

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[user profilable_type first_name last_name second_name city_id gender avatar])
    end

    def sign_up_client_profile_params
      params.require(:user).permit(%i[country_id description])
    end

    def sign_up_realtor_profile_params
      params.require(:user).permit(%i[registration_number employment_date])
    end

    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: %i[user profilable_type first_name last_name second_name city_id gender avatar])
    end
  end
end
