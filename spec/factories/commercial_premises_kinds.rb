# == Schema Information
#
# Table name: commercial_premises_kinds
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :commercial_premises_kind do
    name { 'MyString' }
  end
end
