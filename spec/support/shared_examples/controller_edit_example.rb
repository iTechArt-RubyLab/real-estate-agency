shared_examples 'GET /edit' do |model|
  it 'renders GET /edit response' do
    model_name = model.to_s.underscore.to_sym
    instance = create(model_name, attributes)
    get send("edit_#{model.to_s.underscore}_url", instance)
    expect(response).to be_successful
  end
end
