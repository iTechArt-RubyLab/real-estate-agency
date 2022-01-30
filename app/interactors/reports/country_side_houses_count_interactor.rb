module Reports
  class CountrySideHousesCountInteractor
    include Interactor

    def call
      Lot.where(lotable_type: 'CountrySideHouse').count
    end
  end
end
