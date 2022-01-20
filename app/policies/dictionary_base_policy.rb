class DictionaryBasePolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.role.can_read_dictionary
  end

  def show?
    user.role.can_read_dictionary
  end

  def create?
    user.role.can_edit_dictionary
  end

  def new?
    create?
  end

  def update?
    user.role.can_edit_dictionary
  end

  def edit?
    update?
  end

  def destroy?
    user.role.can_edit_dictionary
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :user, :scope
  end
end
