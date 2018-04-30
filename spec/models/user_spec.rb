require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validate associations" do
    #it { should validate_presence_of(:title) }
    it { should have_many(:albums) }
    it { should have_many(:friendships) }
    it { should have_many(:events) }
    it { should have_many(:posts).through(:albums) }
    it { should have_many(:friends).through(:friendships) }
  end

  describe "#create_default_album" do
    it "is a success" do
      user = User.first
      expect{user.create_default_albums}.to change(Album, :count).by(2)
    end
  end
end