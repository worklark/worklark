class Dashboard::OnboardingController < DashboardController
  def user_profile
    @user_profile = UserProfile.new
  end

  def organization_profile
    @organization_profile = OrganizationProfile.new
  end
end
