require 'rails_helper'

RSpec.describe 'client_profiles/show', type: :view do
  before(:each) do
    @client_profile = assign(:client_profile, ClientProfile.create!(
                                                country: nil
                                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
  end
end
