require 'rails_helper'

RSpec.describe 'ready_states/index', type: :view do
  before(:each) do
    assign(:ready_states, [
             ReadyState.create!(
               name: 'Name'
             ),
             ReadyState.create!(
               name: 'Name'
             )
           ])
  end

  it 'renders a list of ready_states' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
