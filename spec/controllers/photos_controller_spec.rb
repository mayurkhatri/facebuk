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
      expect(response).to render_template(:index)
    end

    it "assigns all photos to template" do
      photo_1 = FactoryBot.create(:photo)
      photo_2 = FactoryBot.create(:photo)
      get :index, params: { user_id: user.id }
      expect(assigns(:photos)).to match_array([photo_1, photo_2])
    end
  end
end
