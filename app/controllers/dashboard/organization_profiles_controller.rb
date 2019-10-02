class Dashboard::OrganizationProfilesController < DashboardController
  skip_before_action :ensure_onboarded, only: [:create]

  def create
    @organization_profile = OrganizationProfile.new organization_profiles_params
    @organization_profile.user = current_user
    if @organization_profile.save
      return redirect_to dashboard_path if params[:onboarding]
      # redirect_to organization_profile_edi, notice: <%= "'#{human_name} was successfully created.'" %>
    end
  end

  private

  def organization_profiles_params
    params
      .require(:organization_profile)
      .permit(:registered_name, :operating_name, :shortname, :website)
  end
end
