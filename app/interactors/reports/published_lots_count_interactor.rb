module Reports
  class PublishedLotsCountInteractor
    include Interactor

    def call
      published_lots_count = Lot.where(state: 'published').count
      context.published_lots_count = published_lots_count
    end
  end
end
