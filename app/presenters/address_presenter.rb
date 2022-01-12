class AddressPresenter
  def ordered_streets
    Street.order(:name)
  end
end
