shared_examples 'GET /new' do |model|
  it 'renders GET /new response' do
    get send("new_#{model.to_s.underscore}_url")
    expect(response).to be_successful
  end
end
