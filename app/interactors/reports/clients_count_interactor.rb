module Reports
  class ClientsCountInteractor
    include Interactor

    def call
      User.where(profilable_type: 'ClientProfile').count
    end
  end
end
