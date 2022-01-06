require 'rails_helper'

RSpec.describe 'countries/show', type: :view do
  before(:each) do
    @country = assign(:country, Country.create!(
                                  name: 'Name',
                                  phone_code: 'Phone Code'
                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone Code/)
  end
end
