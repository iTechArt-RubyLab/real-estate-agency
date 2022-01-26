module Users
  class ProfileCreatorService
    def initialize(profilable_type, params, sign_up_params)
      @profilable_type = profilable_type
      @params = params
      @sign_up_params = sign_up_params
    end

    def call
      if profilable_type == 'ClientProfile'
        client_profile = ClientProfile.create(description: 'no__info')
        client_role = Role.client
        sign_up_params.merge(profilable_id: client_profile.id, role_id: client_role.id)
      else
        realtor_profile = RealtorProfile.create(registration_number: 'no__info', employment_date: Date.current)
        realtor_role = Role.realtor
        sign_up_params.merge(profilable_id: realtor_profile.id, role_id: realtor_role.id)
      end
    end

    private

    attr_accessor :profilable_type, :params, :sign_up_params
  end
end
