require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#create_default_album" do
    it "is a success" do
      user = User.first
      expect{user.create_default_albums}.to change(Album, :count).by(2)
    end
  end

  describe "validations" do
    #it { should validate_presence_of(:title) }
  end
end
