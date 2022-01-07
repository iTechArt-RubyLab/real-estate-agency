# == Schema Information
#
# Table name: wall_materials
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :wall_material, class: WallMaterial do
    name { Faker::Lorem.characters(number: 10, min_alpha: 10) }

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
