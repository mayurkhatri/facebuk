require 'rails_helper'

feature 'photos page' do
  scenario 'photos link clicked' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit('/')
    click_link('Photos')
    expect(page).to have_selector('h1', exact_text: 'Photos')
    expect(page).to have_selector('h4', exact_text: 'Photos of you')
  end
end