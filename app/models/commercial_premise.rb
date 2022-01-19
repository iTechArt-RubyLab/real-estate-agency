# == Schema Information
#
# Table name: commercial_premises
#
#  id                          :bigint           not null, primary key
#  area                        :decimal(, )
#  floor                       :integer
#  number_of_premises          :integer
#  plot_of_land                :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  commercial_premises_kind_id :bigint           not null
#
# Indexes
#
#  index_commercial_premises_on_commercial_premises_kind_id  (commercial_premises_kind_id)
#
# Foreign Keys
#
#  fk_rails_...  (commercial_premises_kind_id => commercial_premises_kinds.id)
#
class CommercialPremise < ApplicationRecord
  belongs_to :commercial_premises_kind
  has_one :lot, as: :lotable
  accepts_nested_attributes_for :lot
  delegate :title, :description, :price, to: :lot

  validates :area, inclusion: { in: 0.1..1000.0 }
  validates :floor, numericality: { only_integer: true }, inclusion: { in: 1..34 }
  validates :number_of_premises, numericality: { only_integer: true }, inclusion: { in: 1..100 }
  validates :plot_of_land, numericality: { only_integer: true }, inclusion: { in: 1..1000 }

  scope :with_area, ->(area) { where(area: area) }
  scope :with_floor, ->(floor) { where(floor: floor) }
  scope :with_number_of_premises, ->(number_of_premises) { where(number_of_premises: number_of_premises) }
  scope :with_plot_of_land, ->(plot_of_land) { where(plot_of_land: plot_of_land) }
  scope :with_commercial_premises_kind_id, lambda { |commercial_premises_kind_id|
                                             where(commercial_premises_kind_id: commercial_premises_kind_id)
                                           }
end
