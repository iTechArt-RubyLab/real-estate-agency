module Reports
  class InProgressLotsCountInteractor
    include Interactor

    def call
      Lot.where(state: 'in_progress').count
    end
  end
end
