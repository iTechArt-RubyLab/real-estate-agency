require 'rails_helper'

RSpec.describe 'changes_histories/new', type: :view do
  before(:each) do
    assign(:changes_history, ChangesHistory.new(
                               changes: 'MyString',
                               user: nil
                             ))
  end

  it 'renders new changes_history form' do
    render

    assert_select 'form[action=?][method=?]', changes_histories_path, 'post' do
      assert_select 'input[name=?]', 'changes_history[changes]'

      assert_select 'input[name=?]', 'changes_history[user_id]'
    end
  end
end
