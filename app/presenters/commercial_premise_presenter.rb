class CommercialPremisePresenter
  def ordered_commercial_premises_kinds
    CommercialPremisesKind.order(:name)
  end
end
