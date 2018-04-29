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
  scenario 'cannot login with invalid email' do
    visit('/')
    fill_in('Password', with: "test123")
    click_on('Log in')
    expect(page).to have_content('Invalid Email or password.')
  end
end