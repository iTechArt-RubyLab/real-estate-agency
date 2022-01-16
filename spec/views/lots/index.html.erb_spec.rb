require 'rails_helper'

RSpec.describe 'lots/index', type: :view do
  before(:each) do
    assign(:lots, [
             Lot.create!(
               title: 'Title',
               description: 'MyText',
               price: '9.99',
               deal_type: nil,
               address: nil,
               lotable: nil
             ),
             Lot.create!(
               title: 'Title',
               description: 'MyText',
               price: '9.99',
               deal_type: nil,
               address: nil,
               lotable: nil
             )
           ])
  end

  it 'renders a list of lots' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
