module Reports
  class PublishedLotsCountInteractor
    include Interactor

    def call
      Lot.where(state: 'published').count
    end
  end
end
