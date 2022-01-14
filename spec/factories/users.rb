# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  date_of_birth          :date
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  gender                 :integer
#  last_name              :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  profilable_type        :string           not null
#  provider               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  second_name            :string
#  sign_in_count          :integer          default(0), not null
#  uid                    :string
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  city_id                :bigint           not null
#  profilable_id          :bigint           not null
#  role_id                :bigint
#  user_info_id           :bigint
#
# Indexes
#
#  index_users_on_city_id               (city_id)
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_profilable            (profilable_type,profilable_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_role_id               (role_id)
#  index_users_on_user_info_id          (user_info_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#  fk_rails_...  (role_id => roles.id)
#  fk_rails_...  (user_info_id => user_infos.id)
#
FactoryBot.define do
  factory :user do
  end
end
