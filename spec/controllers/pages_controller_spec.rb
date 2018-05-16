require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #index" do
    let(:user) { FactoryBot.create(:user) }

    before do
      sign_in user
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:index)
    end

    it "assigns all posts to template" do
      post_1 = user.pages.create(name: "Test post 1")
      post_2 = user.pages.create(name: "Test post 2")
      get :index
      expect(assigns(:pages)).to match_array([post_1, post_2])
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:page) { FactoryBot.create(:page) }
    it "returns http success" do
      get :show, params: { id: page.id }
      expect(response).to have_http_status(:success)
    end
  end
end
