require 'rails_helper'

RSpec.describe 'flats/new', type: :view do
  before(:each) do
    assign(:flat, Flat.new(
                    rooms_count: 1,
                    floor: 1,
                    year_of_construction: 1,
                    celling_height: '9.99',
                    total_area: '9.99',
                    living_area: '9.99',
                    kitchen_area: '9.99',
                    renovation: nil,
                    wall_material: nil
                  ))
  end

  it 'renders new flat form' do
    render

    assert_select 'form[action=?][method=?]', flats_path, 'post' do
      assert_select 'input[name=?]', 'flat[rooms_count]'

      assert_select 'input[name=?]', 'flat[floor]'

      assert_select 'input[name=?]', 'flat[year_of_construction]'

      assert_select 'input[name=?]', 'flat[celling_height]'

      assert_select 'input[name=?]', 'flat[total_area]'

      assert_select 'input[name=?]', 'flat[living_area]'

      assert_select 'input[name=?]', 'flat[kitchen_area]'

      assert_select 'input[name=?]', 'flat[renovation_id]'

      assert_select 'input[name=?]', 'flat[wall_material_id]'
    end
  end
end
