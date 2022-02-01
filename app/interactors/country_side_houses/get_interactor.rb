module CountrySideHouses
  class GetInteractor
    include Interactor

    def call
      country_side_houses = CountrySideHouse.includes(:country_side_house_kind, :ready_state, :wall_material, lot: [:deal_type, { address: [street: [district: [:city]]] }]).references(:lot)
      context.country_side_houses = country_side_houses
    end
  end
end
