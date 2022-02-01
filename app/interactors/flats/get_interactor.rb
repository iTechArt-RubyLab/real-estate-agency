module Flats
  class GetInteractor
    include Interactor

    def call
      flats = Flat.includes(:renovation, :wall_material, lot: [:deal_type, { address: [street: [district: [:city]]] }]).references(:lot)
      context.flats = flats
    end
  end
end
