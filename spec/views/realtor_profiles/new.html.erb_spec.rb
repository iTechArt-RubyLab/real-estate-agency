require 'rails_helper'

RSpec.describe 'realtor_profiles/new', type: :view do
  before(:each) do
    assign(:realtor_profile, RealtorProfile.new(
                               registration_number: 'MyString'
                             ))
  end

  it 'renders new realtor_profile form' do
    render

    assert_select 'form[action=?][method=?]', realtor_profiles_path, 'post' do
      assert_select 'input[name=?]', 'realtor_profile[registration_number]'
    end
  end
end
