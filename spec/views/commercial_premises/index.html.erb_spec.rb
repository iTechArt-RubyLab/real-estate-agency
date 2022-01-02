require 'rails_helper'

RSpec.describe 'commercial_premises/index', type: :view do
  before(:each) do
    assign(:commercial_premises, [
             CommercialPremise.create!(
               area: '9.99',
               floor: 2,
               number_of_premises: 3,
               plot_of_land: 4,
               commercial_premises_kind: nil
             ),
             CommercialPremise.create!(
               area: '9.99',
               floor: 2,
               number_of_premises: 3,
               plot_of_land: 4,
               commercial_premises_kind: nil
             )
           ])
  end

  it 'renders a list of commercial_premises' do
    render
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
