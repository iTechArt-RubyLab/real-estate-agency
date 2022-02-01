require 'rails_helper'

RSpec.describe 'country_side_houses/new', type: :view do
  before(:each) do
    assign(:country_side_house, CountrySideHouse.new(
                                  total_area: '9.99',
                                  land_area: '9.99',
                                  floors_count: 1,
                                  year_of_construction: 1,
                                  wall_material: nil,
                                  country_side_house_kind: nil,
                                  ready_state: nil
                                ))
  end

  it 'renders new country_side_house form' do
    render

    assert_select 'form[action=?][method=?]', country_side_houses_path, 'post' do
      assert_select 'input[name=?]', 'country_side_house[total_area]'

      assert_select 'input[name=?]', 'country_side_house[land_area]'

      assert_select 'input[name=?]', 'country_side_house[floors_count]'

      assert_select 'input[name=?]', 'country_side_house[year_of_construction]'

      assert_select 'input[name=?]', 'country_side_house[wall_material_id]'

      assert_select 'input[name=?]', 'country_side_house[country_side_house_kind_id]'

      assert_select 'input[name=?]', 'country_side_house[ready_state_id]'
    end
  end
end