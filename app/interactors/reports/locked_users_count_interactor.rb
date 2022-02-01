module Reports
  class LockedUsersCountInteractor
    include Interactor

    def call
      locked_users_count = User.where.not(locked_at: nil).count
      context.locked_users_count = locked_users_count
    end
  end
end
