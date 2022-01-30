module Lots
  class GetInteractor
    include Interactor

    def initialize(lots)
      @lots = lots
    end

    def call
      lots.joins(:deal_type, :address, address: [street: [district: [:city]]])
    end

    private

    attr_accessor :lots
  end
end
