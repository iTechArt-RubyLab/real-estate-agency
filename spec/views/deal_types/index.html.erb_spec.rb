require 'rails_helper'

RSpec.describe 'deal_types/index', type: :view do
  before(:each) do
    assign(:deal_types, [
             DealType.create!(
               name: 'Name'
             ),
             DealType.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of deal_types' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
