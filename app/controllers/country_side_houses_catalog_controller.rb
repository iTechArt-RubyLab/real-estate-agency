class CountrySideHousesCatalogController < ApplicationController
  def index
    @country_side_houses = CountrySideHousesCatalogs::GetInteractor.new.call
  end
end
