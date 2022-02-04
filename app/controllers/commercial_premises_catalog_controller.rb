class CommercialPremisesCatalogController < ApplicationController
  def index
    @commercial_premises = CommercialPremise.includes(:lot).where(lot: { state: 'published' })
  end
end
