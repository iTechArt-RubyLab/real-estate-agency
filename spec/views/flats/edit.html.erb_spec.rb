require 'rails_helper'

RSpec.describe 'flats/edit', type: :view do
  before(:each) do
    @flat = assign(:flat, Flat.create!(
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

  it 'renders the edit flat form' do
    render

    assert_select 'form[action=?][method=?]', flat_path(@flat), 'post' do
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
