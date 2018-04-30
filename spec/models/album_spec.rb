require 'rails_helper'

RSpec.describe Album, type: :model do
  describe "validate associations" do
    it { should belong_to(:user) }
    it { should have_many(:posts).dependent(:delete_all) }
  end
end
