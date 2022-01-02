# == Schema Information
#
# Table name: ready_states
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ReadyState < ApplicationRecord
end
