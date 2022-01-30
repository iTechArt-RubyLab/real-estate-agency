module Reports
  class LotsCountInteractor
    include Interactor

    def call
      Lot.count
    end
  end
end
