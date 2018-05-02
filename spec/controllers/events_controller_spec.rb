require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe "GET index" do
    it "renders :index template" do
      user = FactoryBot.create(:user)
      get :index, params: { user_id: user.id }
      expect(response).to render_template(:index)
    end
  end
end
