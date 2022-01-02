require 'rails_helper'

RSpec.describe 'ready_states/show', type: :view do
  before(:each) do
    @ready_state = assign(:ready_state, ReadyState.create!(
                                          name: 'Name'
                                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
  end
end
