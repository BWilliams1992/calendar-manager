 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/event_templates", type: :request do
  
  # EventTemplate. As you add validations to EventTemplate, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      EventTemplate.create! valid_attributes
      get event_templates_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      event_template = EventTemplate.create! valid_attributes
      get event_template_url(event_template)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_event_template_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      event_template = EventTemplate.create! valid_attributes
      get edit_event_template_url(event_template)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new EventTemplate" do
        expect {
          post event_templates_url, params: { event_template: valid_attributes }
        }.to change(EventTemplate, :count).by(1)
      end

      it "redirects to the created event_template" do
        post event_templates_url, params: { event_template: valid_attributes }
        expect(response).to redirect_to(event_template_url(EventTemplate.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new EventTemplate" do
        expect {
          post event_templates_url, params: { event_template: invalid_attributes }
        }.to change(EventTemplate, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post event_templates_url, params: { event_template: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested event_template" do
        event_template = EventTemplate.create! valid_attributes
        patch event_template_url(event_template), params: { event_template: new_attributes }
        event_template.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the event_template" do
        event_template = EventTemplate.create! valid_attributes
        patch event_template_url(event_template), params: { event_template: new_attributes }
        event_template.reload
        expect(response).to redirect_to(event_template_url(event_template))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        event_template = EventTemplate.create! valid_attributes
        patch event_template_url(event_template), params: { event_template: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested event_template" do
      event_template = EventTemplate.create! valid_attributes
      expect {
        delete event_template_url(event_template)
      }.to change(EventTemplate, :count).by(-1)
    end

    it "redirects to the event_templates list" do
      event_template = EventTemplate.create! valid_attributes
      delete event_template_url(event_template)
      expect(response).to redirect_to(event_templates_url)
    end
  end
end
