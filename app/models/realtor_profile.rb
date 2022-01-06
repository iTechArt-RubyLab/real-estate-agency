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
class RealtorProfile < ApplicationRecord
  has_one :user_info, as: :profilable
end
