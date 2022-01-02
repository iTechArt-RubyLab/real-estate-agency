require 'rails_helper'

RSpec.describe 'ready_states/edit', type: :view do
  before(:each) do
    @ready_state = assign(:ready_state, ReadyState.create!(
                                          name: 'MyString'
                                        ))
  end

  it 'renders the edit ready_state form' do
    render

    assert_select 'form[action=?][method=?]', ready_state_path(@ready_state), 'post' do
      assert_select 'input[name=?]', 'ready_state[name]'
    end
  end
end
