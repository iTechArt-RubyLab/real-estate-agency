# == Schema Information
#
# Table name: tags
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tag < ApplicationRecord
  has_and_belongs_to_many :client_profiles

  validates :name, length: { in: 3..30 }, format: { with: /\A[a-zA-Z ]+\z/ }

  scope :with_name, ->(name) { where(name: name) }
end
