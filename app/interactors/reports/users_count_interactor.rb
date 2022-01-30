module Reports
  class UsersCountInteractor
    include Interactor

    def call
      User.count
    end
  end
end
