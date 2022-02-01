module Reports
  class FlatsCountInteractor
    include Interactor

    def call
      flats_count = Lot.where(lotable_type: 'Flat').count
      context.flats_count = flats_count
    end
  end
end
