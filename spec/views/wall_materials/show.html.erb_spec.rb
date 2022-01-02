require 'rails_helper'

RSpec.describe 'wall_materials/show', type: :view do
  before(:each) do
    @wall_material = assign(:wall_material, WallMaterial.create!(
                                              name: 'Name'
                                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
