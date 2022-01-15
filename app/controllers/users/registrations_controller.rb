# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_account_update_params, only: [:update]

    def create
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

    def profilable_type
      sign_up_params[:profilable_type]
    end

    def user_sign_up_params
      Users::ProfileCreatorService.new(profilable_type, params, sign_up_params).call
    end

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[user profilable_type first_name last_name second_name city_id gender date_of_birth avatar])
    end

    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: %i[user profilable_type first_name last_name second_name city_id gender date_of_birth avatar])
    end
  end
end
