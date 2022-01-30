module CountrySideHouses
  class GetInteractor
    include Interactor

    def call
      CountrySideHouse.includes(:country_side_house_kind, :ready_state, :wall_material, lot: [:deal_type, { address: [street: [district: [:city]]] }]).references(:lot)
    end
  end
end
