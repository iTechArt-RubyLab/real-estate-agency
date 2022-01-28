# == Schema Information
#
# Table name: roles
#
#  id                               :bigint           not null, primary key
#  can_approve_realtor              :boolean
#  can_asign                        :boolean
#  can_create_lot                   :boolean
#  can_create_role                  :boolean
#  can_edit_dictionary              :boolean
#  can_edit_lot                     :boolean
#  can_freeze_user                  :boolean
#  can_give_permission              :boolean
#  can_read_dictionary              :boolean
#  can_read_lot                     :boolean
#  can_read_others_lots             :boolean
#  can_work_with_all_property_types :boolean
#  name                             :string
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#
FactoryBot.define do
  factory :role, class: Role do
    name { Faker::Lorem.characters(number: 10, min_alpha: 10) }
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

    trait :invalid_long do
      name { Faker::Lorem.characters(number: 31, min_alpha: 31) }
    end

    trait :invalid_short do
      name { Faker::Lorem.characters(number: 2, min_alpha: 2) }
    end

    trait :invalid_with_numbers do
      name { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
    end
  end
end
