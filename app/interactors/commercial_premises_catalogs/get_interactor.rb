module CommercialPremisesCatalogs
  class GetInteractor
    include Interactor

    def call
      commercial_premises_catalogs = CommercialPremise.includes(:lot).where(lot: { state: 'published' })
      context.commercial_premises_catalogs = commercial_premises_catalogs
    end
  end
end
