# == Schema Information
#
# Table name: realtor_profiles
#
#  id                  :bigint           not null, primary key
#  employment_date     :date
#  registration_number :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require 'rails_helper'

RSpec.describe RealtorProfile, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
