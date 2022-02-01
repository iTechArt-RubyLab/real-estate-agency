module Reports
  class CountrySideHousesCountInteractor
    include Interactor

    def call
      country_side_houses_count = Lot.where(lotable_type: 'CountrySideHouse').count
      context.country_side_houses_count = country_side_houses_count
    end
  end
end
