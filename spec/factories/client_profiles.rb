# == Schema Information
#
# Table name: client_profiles
#
#  id           :bigint           not null, primary key
#  description  :text
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_id   :bigint
#
# Indexes
#
#  index_client_profiles_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
FactoryBot.define do
  factory :client_profile, class: ClientProfile do
    association :country
    description { Faker::Lorem.sentence }

    trait :invalid_long do
      description { Faker::Lorem.characters(number: 510) }
    end

    trait :invalid_short do
      description { Faker::Lorem.characters(number: 2) }
    end
  end
end
