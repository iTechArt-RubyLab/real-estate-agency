# == Schema Information
#
# Table name: streets
#
#  id          :bigint           not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  district_id :bigint           not null
#
# Indexes
#
#  index_streets_on_district_id  (district_id)
#
# Foreign Keys
#
#  fk_rails_...  (district_id => districts.id)
#
class Street < ApplicationRecord
  belongs_to :district, optional: true
  has_many :addresses

  validates :name, length: { in: 2..40 }, format: { with: /\A[a-zA-Z ]+\z/ }

  scope :with_district, ->(district_id) { where(district_id: district_id) }
end
