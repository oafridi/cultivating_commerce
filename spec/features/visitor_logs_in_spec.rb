require 'rails_helper'

feature "user logs in" do
  scenario "with valid email and password" do
    user = create(:user)
    sign_in_with user
    expect(page).not_to have_content("Sign in")
    expect(page).to have_content(user.first_name)
    expect(page).to have_content("logout")
  end  

end