# == Schema Information
#
# Table name: deal_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe DealType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
