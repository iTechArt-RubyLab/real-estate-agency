require 'rails_helper'

RSpec.describe 'country_side_houses/index', type: :view do
  before(:each) do
    assign(:country_side_houses, [
             CountrySideHouse.create!(
               total_area: '9.99',
               land_area: '9.99',
               floors_count: 2,
               year_of_construction: 3,
               wall_material: nil,
               country_side_house_kind: nil,
               ready_state: nil
             ),
             CountrySideHouse.create!(
               total_area: '9.99',
               land_area: '9.99',
               floors_count: 2,
               year_of_construction: 3,
               wall_material: nil,
               country_side_house_kind: nil,
               ready_state: nil
             )
           ])
  end

  it 'renders a list of country_side_houses' do
    render
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
