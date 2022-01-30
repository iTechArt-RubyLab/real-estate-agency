module Districts
  class GetInteractor
    include Interactor

    def call
      District.preload(:streets)
    end
  end
end
