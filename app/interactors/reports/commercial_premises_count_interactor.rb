module Reports
  class CommercialPremisesCountInteractor
    include Interactor

    def call
      Lot.where(lotable_type: 'CommercialPremise').count
    end
  end
end
