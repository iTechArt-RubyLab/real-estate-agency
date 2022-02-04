class CommercialPremisePresenter
  def ordered_commercial_premises_kinds
    CommercialPremisesKind.order(:name)
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
