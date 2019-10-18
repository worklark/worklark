require "application_system_test_case"

class OnboardingsTest < ApplicationSystemTestCase
  # This test is being written like this on 18 Oct 2018, please fix this
  # in the future by:
  # 1. fetching fixtures directly


  test "first log in should redirect to onboarding" do
    login_with_fresh_account
    assert_selector "h1", text: "User Profile"
  end

  test "redirect to organization profile after filling user profile" do
    login_with_fresh_account
    fill_in_user_profile
    assert_selector "h1", text: "Organization Profile"
  end

  test "redirect to dashboard after filling organization" do
    login_with_fresh_account
    fill_in_user_profile
    fill_in_organization_profile
    assert_selector "h1", text: "Jobs"
  end

  private

  def login_with_fresh_account
    visit new_user_session_url
    # From the :fresh fixture in users.yml
    fill_in "Email",    with: "alice@example.org"
    fill_in "Password", with: "123greetings"
    click_on "Log in", class: 'btn'
  end

  def fill_in_user_profile
    fill_in "user_profile[legal_name]", with: "William Bradley Pitt"
    fill_in "Preferred first name",     with: "Brad"
    fill_in "Preferred last name",      with: "Pitt"
    fill_in "Job title",                with: "Actor"
    fill_in "Phone number",             with: "+923124444777"
    click_on "Save user profile", class: 'btn'
  end

  def fill_in_organization_profile
    fill_in "Operating name",     with: "WorkLark"
    fill_in "Registered name",    with: "WORKLARK LLP"
    fill_in "Shortname",          with: "worklark"
    fill_in "Website",            with: "https://www.google.com"
    click_on "Save company profile", class: 'btn'
  end
end
