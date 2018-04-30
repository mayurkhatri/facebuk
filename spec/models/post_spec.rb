require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "validations" do
    it { should belong_to(:album) }
    it { should have_many(:photos).dependent(:delete_all) }
  end
end
