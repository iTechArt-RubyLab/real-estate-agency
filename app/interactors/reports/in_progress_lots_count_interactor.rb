module Reports
  class InProgressLotsCountInteractor
    include Interactor

    def call
      in_progress_lots_count = Lot.where(state: 'in_progress').count
      context.in_progress_lots_count = in_progress_lots_count
    end
  end
end
