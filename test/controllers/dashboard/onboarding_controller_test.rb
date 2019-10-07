require 'test_helper'

class Dashboard::OnboardingControllerTest < ActionDispatch::IntegrationTest
  class Unauthenticated < Dashboard::OnboardingControllerTest
    test "should get user_profile" do
      get dashboard_onboarding_user_profile_url
      assert_response :redirect
    end

    test "should get organization_profile" do
      get dashboard_onboarding_organization_profile_url
      assert_response :redirect
    end
  end
end
