require 'rails_helper'

RSpec.describe 'realtor_profiles/index', type: :view do
  before(:each) do
    assign(:realtor_profiles, [
             RealtorProfile.create!(
               registration_number: 'Registration Number'
             ),
             RealtorProfile.create!(
               registration_number: 'Registration Number'
             )
           ])
  end

  it 'renders a list of realtor_profiles' do
    render
    assert_select 'tr>td', text: 'Registration Number'.to_s, count: 2
  end
end
