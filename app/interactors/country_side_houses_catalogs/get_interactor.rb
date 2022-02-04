module CountrySideHousesCatalogs
  class GetInteractor
    include Interactor

    def call
      country_side_houses_catalogs = CountrySideHouse.includes(:lot).where(lot: { state: 'published' })
      context.country_side_houses_catalogs = country_side_houses_catalogs
    end
  end
end
