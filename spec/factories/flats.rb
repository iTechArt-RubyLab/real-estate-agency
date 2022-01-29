# == Schema Information
#
# Table name: flats
#
#  id                   :bigint           not null, primary key
#  celling_height       :decimal(, )
#  floor                :integer
#  kitchen_area         :decimal(, )
#  living_area          :decimal(, )
#  rooms_count          :integer
#  total_area           :decimal(, )
#  year_of_construction :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  renovation_id        :bigint           not null
#  wall_material_id     :bigint           not null
#
# Indexes
#
#  index_flats_on_renovation_id     (renovation_id)
#  index_flats_on_wall_material_id  (wall_material_id)
#
# Foreign Keys
#
#  fk_rails_...  (renovation_id => renovations.id)
#  fk_rails_...  (wall_material_id => wall_materials.id)
#
FactoryBot.define do
  factory :flat, class: Flat do
    renovation { create :renovation }
    wall_material { create :wall_material }
    rooms_count { Faker::Number.within(range: 1..40) }
    floor { Faker::Number.within(range: 1..34) }
    year_of_construction { Faker::Number.within(range: 1900..2022) }
    celling_height { Faker::Number.within(range: 1.80..5.0) }
    total_area { Faker::Number.within(range: 2.0..1000.0) }
    living_area { Faker::Number.within(range: 2.0..100.0) }
    kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    after :create do |flat|
      create :lot, lotable: flat             # has_one
    end

    trait :with_attributes_ids do
      wall_material_id { wall_material.id }
      renovation_id { renovation.id }
    end

    trait :invalid_big_rooms_count do
      rooms_count { Faker::Number.within(range: 41..100) }
    end

    trait :invalid_negative_rooms_count do
      rooms_count { Faker::Number.negative }
    end

    trait :invalid_with_letters_rooms_count do
      rooms_count { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_big_floor do
      floor { Faker::Number.within(range: 35..100) }
    end

    trait :invalid_negative_floor do
      floor { Faker::Number.negative }
    end

    trait :invalid_with_letters_floor do
      floor { Faker::Movies::LordOfTheRings.character }
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

    trait :invalid_big_celling_height do
      celling_height { Faker::Number.within(range: 5.1..10.0) }
    end

    trait :invalid_negative_celling_height do
      celling_height { Faker::Number.negative }
    end

    trait :invalid_with_letters_celling_height do
      celling_height { Faker::Movies::LordOfTheRings.character }
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

    trait :invalid_big_living_area do
      living_area { Faker::Number.within(range: 100.1..200.0) }
    end

    trait :invalid_negative_living_area do
      living_area { Faker::Number.negative }
    end

    trait :invalid_with_letters_living_area do
      living_area { Faker::Movies::LordOfTheRings.character }
    end

    trait :invalid_big_kitchen_area do
      kitchen_area { Faker::Number.within(range: 100.1..200.0) }
    end

    trait :invalid_negative_kitchen_area do
      kitchen_area { Faker::Number.negative }
    end

    trait :invalid_with_letters_kitchen_area do
      kitchen_area { Faker::Movies::LordOfTheRings.character }
    end
  end
end
