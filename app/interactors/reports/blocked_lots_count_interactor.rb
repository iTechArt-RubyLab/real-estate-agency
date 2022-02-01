module Reports
  class BlockedLotsCountInteractor
    include Interactor

    def call
      blocked_lots_count = Lot.where(state: 'blocked').count
      context.blocked_lots_count = blocked_lots_count
    end
  end
end
