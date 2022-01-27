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
#  failed_attempts        :integer          default(0), not null
#  first_name             :string
#  gender                 :integer
#  last_name              :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  profilable_type        :string
#  provider               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  second_name            :string
#  sign_in_count          :integer          default(0), not null
#  uid                    :string
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  profilable_id          :bigint
#  role_id                :bigint
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_profilable            (profilable_type,profilable_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_role_id               (role_id)
#
# Foreign Keys
#
#  fk_rails_...  (role_id => roles.id)
#
FactoryBot.define do
  factory :user do
    email {"admindsaghjdmin@gmail.com"}
    password {"testadmin"}
    password_confirmation { "testadmin"}
    reset_password_token {nil}
    reset_password_sent_at {nil}
    remember_created_at {nil}
    sign_in_count {1}
    current_sign_in_at {"2015-02-06 14:02:10"}
    last_sign_in_at {"2015-02-06 14:02:10"}
    current_sign_in_ip {Faker::Internet.ip_v4_address}
    last_sign_in_ip {Faker::Internet.ip_v4_address}
    confirmed_at {Time.now.utc}
    role {Role.admin}
    city {City.create(name: 'zxczxc')}
    gender {'male'}
    date_of_birth {'1990-01-28'}
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    second_name {Faker::Name.middle_name}
  end
end
