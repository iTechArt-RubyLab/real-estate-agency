FactoryBot.define do
  factory :role do
    name { 'MyString' }
    can_read_lot { false }
    can_edit_lot { false }
    can_asign { false }
    can_read_dictionary { false }
    can_edit_dictionary { false }
    can_give_permission { false }
    can_work_with_all_property_types { false }
    can_create_role { false }
    can_approve_realtor { false }
    can_freeze_user { false }
  end
end
