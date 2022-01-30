module Reports
  class CompletedLotsCountInteractor
    include Interactor

    def call
      Lot.where(state: 'completed').count
    end
  end
end
