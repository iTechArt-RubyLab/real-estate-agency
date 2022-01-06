require 'rails_helper'

RSpec.describe 'realtor_profiles/edit', type: :view do
  before(:each) do
    @realtor_profile = assign(:realtor_profile, RealtorProfile.create!(
                                                  registration_number: 'MyString'
                                                ))
  end

  it 'renders the edit realtor_profile form' do
    render

    assert_select 'form[action=?][method=?]', realtor_profile_path(@realtor_profile), 'post' do
      assert_select 'input[name=?]', 'realtor_profile[registration_number]'
    end
  end
end
