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
end
