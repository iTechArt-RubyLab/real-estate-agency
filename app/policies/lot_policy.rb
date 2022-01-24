class LotPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.present?
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.role.can_read_others_lots
        scope.all
      else
        scope.where(client_id: user.id)
      end
    end

    private

    attr_reader :user, :scope
  end
end
