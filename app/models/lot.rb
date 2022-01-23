# == Schema Information
#
# Table name: lots
#
#  id           :bigint           not null, primary key
#  description  :text
#  lotable_type :string
#  price        :decimal(, )
#  state        :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  address_id   :bigint           not null
#  asignee_id   :bigint
#  asigner_id   :bigint
#  client_id    :bigint
#  deal_type_id :bigint           not null
#  lotable_id   :bigint
#
# Indexes
#
#  index_lots_on_address_id    (address_id)
#  index_lots_on_asignee_id    (asignee_id)
#  index_lots_on_asigner_id    (asigner_id)
#  index_lots_on_client_id     (client_id)
#  index_lots_on_deal_type_id  (deal_type_id)
#  index_lots_on_lotable       (lotable_type,lotable_id)
#
# Foreign Keys
#
#  fk_rails_...  (address_id => addresses.id)
#  fk_rails_...  (asignee_id => users.id)
#  fk_rails_...  (asigner_id => users.id)
#  fk_rails_...  (client_id => users.id)
#  fk_rails_...  (deal_type_id => deal_types.id)
#
class Lot < ApplicationRecord
  has_many_attached :images
  belongs_to :deal_type
  belongs_to :address
  belongs_to :lotable, polymorphic: true, optional: true
  belongs_to :asigner, class_name: 'User', optional: true
  belongs_to :asignee, class_name: 'User', optional: true
  belongs_to :client, class_name: 'User', optional: true
  accepts_nested_attributes_for :address

  validates_with AsigneeValidator

  validates :title, length: { in: 5..50 }, format: { with: /\A[1-9a-zA-Z ]+\z/ }
  validates :description, length: { in: 5..500 }, format: { with: /\A[1-9a-zA-Z ]+\z/ }
  validates :price, inclusion: { in: 0.1..10_000_000.0 }

  scope :with_title, ->(title) { where(title: title) }
  scope :with_description, ->(description) { where(description: description) }
  scope :with_price, ->(price) { where(price: price) }
end
