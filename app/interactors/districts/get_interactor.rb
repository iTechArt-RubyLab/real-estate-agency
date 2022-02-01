module Districts
  class GetInteractor
    include Interactor

    def call
      districts = District.preload(:streets)
      context.districts = districts
    end
  end
end
