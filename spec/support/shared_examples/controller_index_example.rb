shared_examples 'GET /index' do |model|
  it 'renders GET /index response' do
    model_name = model.to_s.underscore.to_sym
    create(model_name, attributes)
    get send("#{model.to_s.underscore.pluralize}_url")
    expect(response).to be_successful
  end
end
