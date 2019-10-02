class Dashboard::OnboardingController < DashboardController
  skip_before_action :ensure_onboarded

  def user_profile
    @user_profile = UserProfile.new
  end

  def organization_profile
    @organization_profile = OrganizationProfile.new
  end
end
