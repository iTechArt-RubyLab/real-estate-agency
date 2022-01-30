module Reports
  class NotStartedLotsCountInteractor
    include Interactor

    def call
      Lot.where(state: 'not_started').count
    end
  end
end
