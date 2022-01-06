require 'rails_helper'

RSpec.describe 'client_profiles/new', type: :view do
  before(:each) do
    assign(:client_profile, ClientProfile.new(
                              country: nil
                            ))
  end

  it 'renders new client_profile form' do
    render

    assert_select 'form[action=?][method=?]', client_profiles_path, 'post' do
      assert_select 'input[name=?]', 'client_profile[country_id]'
    end
  end
end
