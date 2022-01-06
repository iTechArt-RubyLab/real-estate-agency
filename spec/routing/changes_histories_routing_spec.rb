require "rails_helper"

RSpec.describe ChangesHistoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/changes_histories").to route_to("changes_histories#index")
    end

    it "routes to #new" do
      expect(get: "/changes_histories/new").to route_to("changes_histories#new")
    end

    it "routes to #show" do
      expect(get: "/changes_histories/1").to route_to("changes_histories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/changes_histories/1/edit").to route_to("changes_histories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/changes_histories").to route_to("changes_histories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/changes_histories/1").to route_to("changes_histories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/changes_histories/1").to route_to("changes_histories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/changes_histories/1").to route_to("changes_histories#destroy", id: "1")
    end
  end
end
