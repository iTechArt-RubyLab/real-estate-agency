require 'rails_helper'

RSpec.describe 'changes_histories/edit', type: :view do
  before(:each) do
    @changes_history = assign(:changes_history, ChangesHistory.create!(
                                                  changes: 'MyString',
                                                  user: nil
                                                ))
  end

  it 'renders the edit changes_history form' do
    render

    assert_select 'form[action=?][method=?]', changes_history_path(@changes_history), 'post' do
      assert_select 'input[name=?]', 'changes_history[changes]'

      assert_select 'input[name=?]', 'changes_history[user_id]'
    end
  end
end
