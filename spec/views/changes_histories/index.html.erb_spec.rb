require 'rails_helper'

RSpec.describe 'changes_histories/index', type: :view do
  before(:each) do
    assign(:changes_histories, [
             ChangesHistory.create!(
               changes: 'Changes',
               user: nil
             ),
             ChangesHistory.create!(
               changes: 'Changes',
               user: nil
             )
           ])
  end

  it 'renders a list of changes_histories' do
    render
    assert_select 'tr>td', text: 'Changes'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
