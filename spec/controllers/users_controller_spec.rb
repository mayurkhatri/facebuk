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

    it "assigns all posts to template" do
      post_1 = user.albums.first.posts.create(text_content: "sample content")
      post_2 = user.albums.first.posts.create(text_content: "sample content test")
      get "home"
      expect(assigns(:posts)).to match_array([post_1, post_2])
    end
  end
end
