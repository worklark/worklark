require "application_system_test_case"

class ApplyForInvitesTest < ApplicationSystemTestCase
  test "Apply for invite the first time" do
    visit root_url
    fill_in "Name",     with: "Arya"
    fill_in "Business", with: "Winterfell Kitchen"
    fill_in "Email",    with: "arya@example.com"
    click_on "Apply for invite"
    assert_selector "h1", text: "You're on the list"
  end
end
