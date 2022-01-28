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
  factory :country_side_house, class: CountrySideHouse do
    wall_material { create :wall_material }
    country_side_house_kind { create :country_side_house_kind }
    ready_state { create :ready_state }
    floors_count { Faker::Number.within(range: 1..10) }
    land_area { Faker::Number.within(range: 0.1..1000.0) }
    total_area { Faker::Number.within(range: 0.1..1000.0) }
    year_of_construction { Faker::Number.within(range: 1900..2022) }
    after :create do |country_side_house|
      create :lot, lotable: country_side_house             # has_one
    end

    trait :with_attributes_ids do
      wall_material_id { wall_material.id }
      country_side_house_kind_id { country_side_house_kind.id }
      ready_state_id { ready_state.id }
    end

    trait :invalid_big_floors_count do
      floors_count { Faker::Number.within(range: 11..20) }
    end

    trait :invalid_negative_floors_count do
      floors_count { Faker::Number.negative }
    end

    trait :invalid_with_letters_floors_count do
      floors_count { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_big_land_area do
      land_area { Faker::Number.within(range: 1000.1..2000.0) }
    end

    trait :invalid_negative_land_area do
      land_area { Faker::Number.negative }
    end

    trait :invalid_with_letters_land_area do
      land_area { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_big_total_area do
      total_area { Faker::Number.within(range: 1000.1..2000.0) }
    end

    trait :invalid_negative_total_area do
      total_area { Faker::Number.negative }
    end

    trait :invalid_with_letters_total_area do
      total_area { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_big_year_of_construction do
      year_of_construction { Faker::Number.within(range: 2023..2100) }
    end

    trait :invalid_negative_year_of_construction do
      year_of_construction { Faker::Number.negative }
    end

    trait :invalid_with_letters_year_of_construction do
      year_of_construction { Faker::Movies::LordOfTheRings.character }
    end
  end
end
