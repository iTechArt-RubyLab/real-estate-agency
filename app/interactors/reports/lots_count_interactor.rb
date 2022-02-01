module Reports
  class LotsCountInteractor
    include Interactor

    def call
      lots_count = Lot.count
      context.lots_count = lots_count
    end
  end
end
