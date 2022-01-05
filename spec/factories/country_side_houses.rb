# == Schema Information
#
# Table name: country_side_houses
#
#  id                         :bigint           not null, primary key
#  floors_count               :integer
#  land_area                  :decimal(, )
#  total_area                 :decimal(, )
#  year_of_construction       :integer
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  country_side_house_kind_id :bigint           not null
#  ready_state_id             :bigint           not null
#  wall_material_id           :bigint           not null
#
# Indexes
#
#  index_country_side_houses_on_country_side_house_kind_id  (country_side_house_kind_id)
#  index_country_side_houses_on_ready_state_id              (ready_state_id)
#  index_country_side_houses_on_wall_material_id            (wall_material_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_side_house_kind_id => country_side_house_kinds.id)
#  fk_rails_...  (ready_state_id => ready_states.id)
#  fk_rails_...  (wall_material_id => wall_materials.id)
#
FactoryBot.define do
  factory :floors_count, class: CountrySideHouse do
    trait :valid do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_big do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      floors_count { Faker::Number.within(range: 11..20) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_negative do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      floors_count { Faker::Number.negative }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_with_letters do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      floors_count { Faker::Movies::LordOfTheRings.character }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end
  end

  factory :land_area, class: CountrySideHouse do
    trait :valid do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      floors_count { Faker::Number.within(range: 1..10) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_big do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      land_area { Faker::Number.within(range: 1000.1..2000.0) }
      floors_count { Faker::Number.within(range: 1..10) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_negative do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      land_area { Faker::Number.negative }
      floors_count { Faker::Number.within(range: 1..10) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_with_letters do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      land_area { Faker::Movies::LordOfTheRings.character }
      floors_count { Faker::Number.within(range: 1..10) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end
  end

  factory :total_area, class: CountrySideHouse do
    trait :valid do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      total_area { Faker::Number.within(range: 0.1..1000.0) }
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_big do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      total_area { Faker::Number.within(range: 1000.1..2000.0) }
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_negative do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      total_area { Faker::Number.negative }
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end

    trait :invalid_with_letters do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      total_area { Faker::Movies::LordOfTheRings.character }
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
    end
  end

  factory :year_of_construction, class: CountrySideHouse do
    trait :valid do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
    end

    trait :invalid_big do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      year_of_construction { Faker::Number.within(range: 2023..2100) }
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
    end

    trait :invalid_negative do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      year_of_construction { Faker::Number.negative }
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
    end

    trait :invalid_with_letters do
      association :wall_material
      association :country_side_house_kind
      association :ready_state
      year_of_construction { Faker::Movies::LordOfTheRings.character }
      floors_count { Faker::Number.within(range: 1..10) }
      land_area { Faker::Number.within(range: 0.1..1000.0) }
      total_area { Faker::Number.within(range: 0.1..1000.0) }
    end
  end
end
