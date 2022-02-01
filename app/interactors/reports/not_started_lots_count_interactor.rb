module Reports
  class NotStartedLotsCountInteractor
    include Interactor

    def call
      not_started_lots_count = Lot.where(state: 'not_started').count
      context.not_started_lots_count = not_started_lots_count
    end
  end
end
