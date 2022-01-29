class CommercialPremisesCatalogController < ApplicationController
  def index
    @commercial_premises = CommercialPremise.all
  end
end
