module Reports
  class RealtorsCountInteractor
    include Interactor

    def call
      realtors_count = User.where(profilable_type: 'RealtorProfile').count
      context.realtors_count = realtors_count
    end
  end
end
