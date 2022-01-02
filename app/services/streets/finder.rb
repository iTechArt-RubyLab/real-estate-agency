module Streets
  class Finder
    def initialize(city_id)
      @city_id = city_id
    end

    def call
      if city_id.blank?
        Street.all
      else
        Street.joins(:district).where('districts.city_id = 2')
      end
    end

    private

    attr_accessor :city_id
  end
end
