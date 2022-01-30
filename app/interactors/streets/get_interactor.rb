module Streets
  class GetInteractor
    include Interactor

    def initialize(city_id)
      @city_id = city_id
    end

    def call
      if city_id.blank?
        Street.joins(:district)
      else
        Street.joins(:district).where('districts.city_id = ?', city_id)
      end
    end

    private

    attr_accessor :city_id
  end
end
