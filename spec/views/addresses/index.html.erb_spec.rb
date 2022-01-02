require 'rails_helper'

RSpec.describe 'addresses/index', type: :view do
  before(:each) do
    assign(:addresses, [
             Address.create!(
               building: 2,
               number_of_storeys: 3,
               street: nil
             ),
             Address.create!(
               building: 2,
               number_of_storeys: 3,
               street: nil
             )
           ])
  end

  it 'renders a list of addresses' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
