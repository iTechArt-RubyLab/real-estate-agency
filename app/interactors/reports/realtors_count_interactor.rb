module Reports
  class RealtorsCountInteractor
    include Interactor

    def call
      User.where(profilable_type: 'RealtorProfile').count
    end
  end
end
