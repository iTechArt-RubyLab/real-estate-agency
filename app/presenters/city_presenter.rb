class CityPresenter
  def locality_sizes_with_names
    City.locality_sizes.sort.map(&:first)
  end

  def regions_with_names
    City.regions.sort.map(&:first)
  end
end
