require 'rails_helper'

RSpec.describe 'wall_materials/new', type: :view do
  before(:each) do
    assign(:wall_material, WallMaterial.new(
                             name: 'MyString'
                           ))
  end

  it 'renders new wall_material form' do
    render

    assert_select 'form[action=?][method=?]', wall_materials_path, 'post' do
      assert_select 'input[name=?]', 'wall_material[name]'
    end
  end
end
