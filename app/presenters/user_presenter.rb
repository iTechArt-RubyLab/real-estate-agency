class UserPresenter
  def ordered_countries
    Country.order(:name)
  end

  def genders_with_names
    User.genders.sort.map(&:first)
  end
end
