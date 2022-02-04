class FlatsCatalogController < ApplicationController
  def index
    @flats = Flat.includes(:lot).where(lot: { state: 'published' })
  end
end
