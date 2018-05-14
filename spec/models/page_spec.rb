require 'rails_helper'

RSpec.describe Page, type: :model do
  describe "validate associations" do
    it { should belong_to(:user) }
  end

  describe "validate fields" do
    it { should validate_presence_of(:name) }
  end
end
