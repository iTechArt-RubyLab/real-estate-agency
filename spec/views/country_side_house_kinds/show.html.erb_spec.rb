require 'rails_helper'

RSpec.describe 'country_side_house_kinds/show', type: :view do
  before(:each) do
    @country_side_house_kind = assign(:country_side_house_kind, CountrySideHouseKind.create!(
                                                                  name: 'Name'
                                                                ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
