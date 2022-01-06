# == Schema Information
#
# Table name: client_profiles
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :bigint           not null
#
# Indexes
#
#  index_client_profiles_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
class ClientProfile < ApplicationRecord
  belongs_to :country
  has_and_belongs_to_many :tags
  has_one :user_info, as: :profilable
end
