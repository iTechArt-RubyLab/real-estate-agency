class CommercialPremisesCatalogController < ApplicationController
  def index
    @commercial_premises = CommercialPremisesCatalogs::GetInteractor.new.call
  end
end
