module Reports
  class UsersCountInteractor
    include Interactor

    def call
      users_count = User.count
      context.users_count = users_count
    end
  end
end
