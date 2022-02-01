module Reports
  class CompletedLotsCountInteractor
    include Interactor

    def call
      completed_lots_count = Lot.where(state: 'completed').count
      context.completed_lots_count = completed_lots_count
    end
  end
end
