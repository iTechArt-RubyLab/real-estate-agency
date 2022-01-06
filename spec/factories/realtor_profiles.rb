# == Schema Information
#
# Table name: realtor_profiles
#
#  id                  :bigint           not null, primary key
#  employment_date     :date
#  registration_number :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
FactoryBot.define do
  factory :realtor_profile do
    registration_number { 'MyString' }
    employment_date { '2022-01-06' }
  end
end
