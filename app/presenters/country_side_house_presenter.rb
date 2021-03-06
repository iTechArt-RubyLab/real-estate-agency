class CountrySideHousePresenter
  def ordered_country_side_house_kinds
    CountrySideHouseKind.order(:name)
  end

  def ordered_ready_states
    ReadyState.order(:name)
  end

  def ordered_wall_materials
    WallMaterial.order(:name)
  end

  def ordered_deal_types
    DealType.order(:name)
  end

  def ordered_streets
    Street.order(:name)
  end

  def states_with_names
    Lot.states.sort.map(&:first)
  end
end
