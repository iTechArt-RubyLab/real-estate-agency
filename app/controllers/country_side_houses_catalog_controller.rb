class CountrySideHousesCatalogController < ApplicationController
  def index
    @country_side_houses = CountrySideHouse.includes(:lot).where(lot: { state: 'published' })
  end
end
