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
  factory :rooms_count, class: Flat do
    trait :valid do
      association :renovation
      association :wall_material
      rooms_count { Faker::Number.within(range: 1..40) }
      floor { Faker::Number.within(range: 1..34) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_big do
      association :renovation
      association :wall_material
      rooms_count { Faker::Number.within(range: 41..100) }
      floor { Faker::Number.within(range: 1..34) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_negative do
      association :renovation
      association :wall_material
      rooms_count { Faker::Number.negative }
      floor { Faker::Number.within(range: 1..34) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_with_letters do
      association :renovation
      association :wall_material
      rooms_count { Faker::Movies::LordOfTheRings.character }
      floor { Faker::Number.within(range: 1..34) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end
  end

  factory :floor_f, class: Flat do
    trait :valid do
      association :renovation
      association :wall_material
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_big do
      association :renovation
      association :wall_material
      floor { Faker::Number.within(range: 35..100) }
      rooms_count { Faker::Number.within(range: 1..40) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_negative do
      association :renovation
      association :wall_material
      floor { Faker::Number.negative }
      rooms_count { Faker::Number.within(range: 1..40) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_with_letters do
      association :renovation
      association :wall_material
      floor { Faker::Movies::LordOfTheRings.character }
      rooms_count { Faker::Number.within(range: 1..40) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end
  end

  factory :year_of_construction_f, class: Flat do
    trait :valid do
      association :renovation
      association :wall_material
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_big do
      association :renovation
      association :wall_material
      year_of_construction { Faker::Number.within(range: 2023..2100) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_negative do
      association :renovation
      association :wall_material
      year_of_construction { Faker::Number.negative }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_with_letters do
      association :renovation
      association :wall_material
      year_of_construction { Faker::Movies::LordOfTheRings.character }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end
  end

  factory :celling_height, class: Flat do
    trait :valid do
      association :renovation
      association :wall_material
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_big do
      association :renovation
      association :wall_material
      celling_height { Faker::Number.within(range: 5.1..10.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_negative do
      association :renovation
      association :wall_material
      celling_height { Faker::Number.negative }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_with_letters do
      association :renovation
      association :wall_material
      celling_height { Faker::Movies::LordOfTheRings.character }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end
  end

  factory :total_area_f, class: Flat do
    trait :valid do
      association :renovation
      association :wall_material
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_big do
      association :renovation
      association :wall_material
      total_area { Faker::Number.within(range: 1000.1..2000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_negative do
      association :renovation
      association :wall_material
      total_area { Faker::Number.negative }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_with_letters do
      association :renovation
      association :wall_material
      total_area { Faker::Movies::LordOfTheRings.character }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end
  end

  factory :living_area, class: Flat do
    trait :valid do
      association :renovation
      association :wall_material
      living_area { Faker::Number.within(range: 2.0..100.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_big do
      association :renovation
      association :wall_material
      living_area { Faker::Number.within(range: 100.1..200.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_negative do
      association :renovation
      association :wall_material
      living_area { Faker::Number.negative }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end

    trait :invalid_with_letters do
      association :renovation
      association :wall_material
      living_area { Faker::Movies::LordOfTheRings.character }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
    end
  end

  factory :kitchen_area, class: Flat do
    trait :valid do
      association :renovation
      association :wall_material
      kitchen_area { Faker::Number.within(range: 2.0..100.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
    end

    trait :invalid_big do
      association :renovation
      association :wall_material
      kitchen_area { Faker::Number.within(range: 100.1..200.0) }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
    end

    trait :invalid_negative do
      association :renovation
      association :wall_material
      kitchen_area { Faker::Number.negative }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
    end

    trait :invalid_with_letters do
      association :renovation
      association :wall_material
      kitchen_area { Faker::Movies::LordOfTheRings.character }
      living_area { Faker::Number.within(range: 2.0..100.0) }
      total_area { Faker::Number.within(range: 2.0..1000.0) }
      celling_height { Faker::Number.within(range: 1.80..5.0) }
      year_of_construction { Faker::Number.within(range: 1900..2022) }
      floor { Faker::Number.within(range: 1..34) }
      rooms_count { Faker::Number.within(range: 1..40) }
    end
  end
end
