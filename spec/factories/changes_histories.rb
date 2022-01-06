# == Schema Information
#
# Table name: changes_histories
#
#  id         :bigint           not null, primary key
#  changes    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_changes_histories_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :changes_history do
    changes { 'MyString' }
    user { nil }
  end
end
