class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_onboarded
  def index; end

  def ensure_onboarded
    return redirect_to dashboard_onboarding_user_profile_path if current_user.user_profile.blank?
    return redirect_to dashboard_onboarding_organization_profile_path if current_user.organization_profile.blank?
  end
end
