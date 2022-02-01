module Reports
  class CommercialPremisesCountInteractor
    include Interactor

    def call
      comemrcial_premises_count = Lot.where(lotable_type: 'CommercialPremise').count
      context.comemrcial_premises_count = comemrcial_premises_count
    end
  end
end
