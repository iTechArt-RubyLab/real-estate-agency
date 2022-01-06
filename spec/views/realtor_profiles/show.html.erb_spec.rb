require 'rails_helper'

RSpec.describe 'realtor_profiles/show', type: :view do
  before(:each) do
    @realtor_profile = assign(:realtor_profile, RealtorProfile.create!(
                                                  registration_number: 'Registration Number'
                                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Registration Number/)
  end
end
