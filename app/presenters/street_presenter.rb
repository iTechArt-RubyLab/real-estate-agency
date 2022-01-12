class StreetPresenter
  def ordered_districts
    District.order(:name)
  end
end
