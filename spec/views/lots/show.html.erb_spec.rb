require 'rails_helper'

RSpec.describe 'lots/show', type: :view do
  before(:each) do
    @lot = assign(:lot, Lot.create!(
                          title: 'Title',
                          description: 'MyText',
                          price: '9.99',
                          deal_type: nil,
                          address: nil,
                          lotable: nil
                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
