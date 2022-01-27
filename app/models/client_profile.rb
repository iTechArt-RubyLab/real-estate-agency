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
class ClientProfile < ApplicationRecord
  belongs_to :country, optional: true
  has_and_belongs_to_many :tags
  has_one :user, as: :profilable, dependent: :destroy
  accepts_nested_attributes_for :user

  validates :description, length: { in: 5..500 }

  scope :with_description, ->(description) { where(description: description) }
end
