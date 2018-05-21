require 'rails_helper'

feature 'pages page' do
  scenario "click on pages link" do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)
    visit('/')
    click_link('Pages')
    expect(page).to have_selector('h1', exact_text: 'Your Pages')
  end
end