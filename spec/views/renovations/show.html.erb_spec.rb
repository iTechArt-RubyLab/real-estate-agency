require 'rails_helper'

RSpec.describe 'renovations/show', type: :view do
  before(:each) do
    @renovation = assign(:renovation, Renovation.create!(
                                        name: 'Name'
                                      ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
