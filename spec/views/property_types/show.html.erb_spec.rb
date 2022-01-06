require 'rails_helper'

RSpec.describe 'property_types/show', type: :view do
  before(:each) do
    @property_type = assign(:property_type, PropertyType.create!(
                                              name: 'Name'
                                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
