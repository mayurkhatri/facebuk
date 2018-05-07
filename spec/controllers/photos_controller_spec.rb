require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
  describe "GET index" do
    let(:user) { FactoryBot.create(:user) }

    before do
      sign_in user
    end

    it "renders index template" do
      get :index, params: { user_id: user.id }
      expect(response.status).to eq(200)
      # expect
    end

    it "assigns all photos to template" do

    end
  end
end
