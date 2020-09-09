require 'rails_helper'

RSpec.feature "Projects", type: :feature do
  
  scenario "user login" do
    user = FactoryBot.create(:user)
    visit root_path
    fill_in "ログインID", with: user.account_id
    fill_in "パスワード", with: user.password
    click_button "ログイン"
    expect(page).to have_content "noda"
  end
end
