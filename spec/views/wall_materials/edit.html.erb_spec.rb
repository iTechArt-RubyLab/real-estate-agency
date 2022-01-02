require 'rails_helper'

RSpec.describe 'wall_materials/edit', type: :view do
  before(:each) do
    @wall_material = assign(:wall_material, WallMaterial.create!(
                                              name: 'MyString'
                                            ))
  end

  it 'renders the edit wall_material form' do
    render

    assert_select 'form[action=?][method=?]', wall_material_path(@wall_material), 'post' do
      assert_select 'input[name=?]', 'wall_material[name]'
    end
  end
end
