require "application_system_test_case"

class JobPostingsTest < ApplicationSystemTestCase
  driven_by :selenium, using: :headless_chrome

  test "logging in with an onboarded account let you create jobs" do
    login_with_onboarded_account
    assert_selector "h1", text: "Job"
  end

  # test "creating a job should redirect you to to creating job application requirements" do
  #   login_with_onboarded_account
  #   click_on "New job"
  #   # ...
  #   assert_selector "h1", text: "Specify Job Application Requirements"
  # end

  private

  def login_with_onboarded_account
    visit new_user_session_url
    # From the :onboarded fixture in users.yml
    fill_in "Email",    with: "bob@example.org"
    fill_in "Password", with: "123greetings"
    click_on "Log in", class: 'btn'
  end
end
