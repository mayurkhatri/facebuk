require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe "GET index" do
    let(:user) { FactoryBot.create(:user) }

    before do
      sign_in user
    end

    it "renders :index template" do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template(:index)
    end

    it "assigns all events to template" do
      event_1 = user.events.create(name: "first event")
      event_2 = user.events.create(name: "second event")
      get :index
      expect(assigns(:events)).to match_array([event_1, event_2])
    end
  end
end
