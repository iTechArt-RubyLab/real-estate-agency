shared_examples 'DELETE /destroy' do |model|
  it "destroys the requested #{model.to_s.underscore}" do
    instance = model.create! attributes
    expect do
      delete send("#{model.to_s.underscore}_url", instance)
    end.to change(model, :count).by(-1)
  end

  it "redirects to the #{model.to_s.underscore} list" do
    instance = model.create! attributes
    delete send("#{model.to_s.underscore}_url", instance)
    expect(response).to redirect_to(send("#{model.to_s.underscore.pluralize}_url"))
  end
end
