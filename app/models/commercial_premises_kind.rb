# == Schema Information
#
# Table name: commercial_premises_kinds
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CommercialPremisesKind < ApplicationRecord
  has_one :commercial_premise

  validates :name, length: { in: 3..30 }, format: { with: /\A[a-zA-Z ]+\z/ }

  scope :with_name, ->(name) { where(name: name) }
end
