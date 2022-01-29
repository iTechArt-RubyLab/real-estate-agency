shared_examples 'GET /show' do |model|
  it 'renders GET /show response' do
    model_name = model.to_s.underscore.to_sym
    instance = create(model_name, attributes)
    get send("#{model.to_s.underscore}_url", instance)
    expect(response).to be_successful
  end
end
