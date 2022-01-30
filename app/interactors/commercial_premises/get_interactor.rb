module CommercialPremises
  class GetInteractor
    include Interactor

    def call
      CommercialPremise.includes(:commercial_premises_kind, lot: [:deal_type, { address: [street: [district: [:city]]] }]).references(:lot)
    end
  end
end
