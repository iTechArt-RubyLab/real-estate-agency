module Reports
  class ClientsCountInteractor
    include Interactor

    def call
      clients_count = User.where(profilable_type: 'ClientProfile').count
      context.clients_count = clients_count
    end
  end
end
