require 'rails_helper'

RSpec.describe "changes_histories/show", type: :view do
  before(:each) do
    @changes_history = assign(:changes_history, ChangesHistory.create!(
      changes: "Changes",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Changes/)
    expect(rendered).to match(//)
  end
end
