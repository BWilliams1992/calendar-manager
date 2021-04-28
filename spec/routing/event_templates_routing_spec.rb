require "rails_helper"

RSpec.describe EventTemplatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/event_templates").to route_to("event_templates#index")
    end

    it "routes to #new" do
      expect(get: "/event_templates/new").to route_to("event_templates#new")
    end

    it "routes to #show" do
      expect(get: "/event_templates/1").to route_to("event_templates#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/event_templates/1/edit").to route_to("event_templates#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/event_templates").to route_to("event_templates#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/event_templates/1").to route_to("event_templates#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/event_templates/1").to route_to("event_templates#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/event_templates/1").to route_to("event_templates#destroy", id: "1")
    end
  end
end
