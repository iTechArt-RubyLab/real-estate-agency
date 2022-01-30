module Reports
  class LockedUsersCountInteractor
    include Interactor

    def call
      User.where.not(locked_at: nil).count
    end
  end
end
