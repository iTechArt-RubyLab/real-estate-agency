require 'rails_helper'

RSpec.describe 'client_profiles/edit', type: :view do
  before(:each) do
    @client_profile = assign(:client_profile, ClientProfile.create!(
                                                country: nil
                                              ))
  end

  it 'renders the edit client_profile form' do
    render

    assert_select 'form[action=?][method=?]', client_profile_path(@client_profile), 'post' do
      assert_select 'input[name=?]', 'client_profile[country_id]'
    end
  end
end
