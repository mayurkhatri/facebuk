require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validate associations" do
    it { should belong_to(:user)}
  end
end
