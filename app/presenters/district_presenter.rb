class DistrictPresenter
  def ordered_cities
    City.order(:name)
  end
end
