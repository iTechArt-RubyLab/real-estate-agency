class FlatsCatalogController < ApplicationController
  def index
    @flats = FlatsCatalogs::GetInteractor.new.call
  end
end
