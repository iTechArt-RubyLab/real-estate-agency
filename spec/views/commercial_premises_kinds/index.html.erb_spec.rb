require 'rails_helper'

RSpec.describe 'commercial_premises_kinds/index', type: :view do
  before(:each) do
    assign(:commercial_premises_kinds, [
             CommercialPremisesKind.create!(
               name: 'Name'
             ),
             CommercialPremisesKind.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of commercial_premises_kinds' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
