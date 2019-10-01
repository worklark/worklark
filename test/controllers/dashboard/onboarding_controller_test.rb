require 'test_helper'

class Dashboard::OnboardingControllerTest < ActionDispatch::IntegrationTest
  test "should get user_profile" do
    get dashboard_onboarding_user_profile_url
    assert_response :success
  end

  test "should get organization_profile" do
    get dashboard_onboarding_organization_profile_url
    assert_response :success
  end

end
