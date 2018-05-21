require 'rails_helper'

feature 'events page' do
  scenario 'click on events link' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit('/')
    click_link 'Events'
    expect(page).to have_selector('h1', exact_text: 'Events')
  end
end