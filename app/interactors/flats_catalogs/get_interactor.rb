module FlatsCatalogs
  class GetInteractor
    include Interactor

    def call
      flats_catalogs = Flat.includes(:lot).where(lot: { state: 'published' })
      context.flats_catalogs = flats_catalogs
    end
  end
end
