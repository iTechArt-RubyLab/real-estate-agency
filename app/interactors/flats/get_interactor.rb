module Flats
  class GetInteractor
    include Interactor

    def call
      Flat.includes(:renovation, :wall_material, lot: [:deal_type, { address: [street: [district: [:city]]] }]).references(:lot)
    end
  end
end
