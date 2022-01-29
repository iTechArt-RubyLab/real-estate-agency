class CountrySideHousesCatalogController < ApplicationController
  def index
    @country_side_houses = CountrySideHouse.all
  end
end
