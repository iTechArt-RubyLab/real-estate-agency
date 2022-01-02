require 'rails_helper'

RSpec.describe 'ready_states/new', type: :view do
  before(:each) do
    assign(:ready_state, ReadyState.new(
                           name: 'MyString'
                         ))
  end

  it 'renders new ready_state form' do
    render

    assert_select 'form[action=?][method=?]', ready_states_path, 'post' do
      assert_select 'input[name=?]', 'ready_state[name]'
    end
  end
end
