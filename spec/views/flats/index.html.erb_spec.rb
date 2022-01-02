require 'rails_helper'

RSpec.describe 'flats/index', type: :view do
  before(:each) do
    assign(:flats, [
             Flat.create!(
               rooms_count: 2,
               floor: 3,
               year_of_construction: 4,
               celling_height: '9.99',
               total_area: '9.99',
               living_area: '9.99',
               kitchen_area: '9.99',
               renovation: nil,
               wall_material: nil
             ),
             Flat.create!(
               rooms_count: 2,
               floor: 3,
               year_of_construction: 4,
               celling_height: '9.99',
               total_area: '9.99',
               living_area: '9.99',
               kitchen_area: '9.99',
               renovation: nil,
               wall_material: nil
             )
           ])
  end

  it 'renders a list of flats' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
