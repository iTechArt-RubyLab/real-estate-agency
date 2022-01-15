require 'rails_helper'

RSpec.describe 'deal_types/show', type: :view do
  before(:each) do
    @deal_type = assign(:deal_type, DealType.create!(
                                      name: 'Name'
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
