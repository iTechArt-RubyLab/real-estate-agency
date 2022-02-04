module Statable
  extend ActiveSupport::Concern

  def remove_from_work?
    user.role.can_edit_lot
  end

  def publish?
    user.role.can_edit_lot
  end

  def complete?
    user.role.can_edit_lot
  end

  def return_to_publish?
    user.role.can_edit_lot
  end
end
