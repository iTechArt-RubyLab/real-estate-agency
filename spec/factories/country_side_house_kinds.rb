# == Schema Information
#
# Table name: country_side_house_kinds
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :country_side_house_kind do
    name { 'MyString' }
  end
end
