module CommercialPremises
  class GetInteractor
    include Interactor

    def call
      commercial_premises = CommercialPremise.includes(:commercial_premises_kind, lot: [:deal_type, { address: [street: [district: [:city]]] }]).references(:lot)
      context.commercial_premises = commercial_premises
    end
  end
end
