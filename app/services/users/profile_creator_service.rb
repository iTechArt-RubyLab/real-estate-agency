module Users
  class ProfileCreatorService
    def initialize(profilable_type, params, sign_up_params)
      @profilable_type = profilable_type
      @params = params
      @sign_up_params = sign_up_params
    end

    def call
      if profilable_type == 'ClientProfile'
        client_profile = ClientProfile.create(sign_up_client_profile_params)
        sign_up_params.merge(profilable_id: client_profile.id)
      else
        realtor_profile = RealtorProfile.create(sign_up_realtor_profile_params)
        sign_up_params.merge(profilable_id: realtor_profile.id)
      end
    end

    private

    attr_accessor :profilable_type, :params, :sign_up_params

    def sign_up_client_profile_params
      params.require(:user).permit(%i[country_id description])
    end

    def sign_up_realtor_profile_params
      params.require(:user).permit(%i[registration_number employment_date])
    end
  end
end
