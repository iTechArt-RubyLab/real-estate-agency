module Reports
  class BlockedLotsCountInteractor
    include Interactor

    def call
      Lot.where(state: 'blocked').count
    end
  end
end
