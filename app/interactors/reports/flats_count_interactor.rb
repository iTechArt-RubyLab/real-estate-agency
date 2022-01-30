module Reports
  class FlatsCountInteractor
    include Interactor

    def call
      Lot.where(lotable_type: 'Flat').count
    end
  end
end
