require 'rails_helper'

feature 'home page' do
  scenario 'logged in user' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit('/')
    expect(page).to have_content('News Feed')
  end
  scenario 'user not signed in' do
    visit('/')
    expect(page).to have_content('Forgot your password?')
  end
end