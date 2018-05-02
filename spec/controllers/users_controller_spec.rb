require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #home" do
    let(:user) { FactoryBot.create(:user) }

    before do
      sign_in user
    end

    it "renders :home template" do
      get "home"
      expect(response.status).to eq(200)
      expect(response).to render_template(:home)
    end
  end
end
