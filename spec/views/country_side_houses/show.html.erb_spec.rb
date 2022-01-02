require 'rails_helper'

RSpec.describe 'country_side_houses/show', type: :view do
  before(:each) do
    @country_side_house = assign(:country_side_house, CountrySideHouse.create!(
                                                        total_area: '9.99',
                                                        land_area: '9.99',
                                                        floors_count: 2,
                                                        year_of_construction: 3,
                                                        wall_material: nil,
                                                        country_side_house_kind: nil,
                                                        ready_state: nil
                                                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
