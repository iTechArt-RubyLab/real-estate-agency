# == Schema Information
#
# Table name: user_infos
#
#  id              :bigint           not null, primary key
#  date_of_birth   :date
#  first_name      :string
#  gender          :integer
#  last_name       :string
#  profilable_type :string
#  second_name     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  city_id         :bigint           not null
#  profilable_id   :bigint
#
# Indexes
#
#  index_user_infos_on_city_id                            (city_id)
#  index_user_infos_on_profilable_type_and_profilable_id  (profilable_type,profilable_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#
require 'rails_helper'

RSpec.describe UserInfo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
