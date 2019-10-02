class Dashboard::UserProfilesController < DashboardController
  skip_before_action :ensure_onboarded, only: [:create]

  def create
    @user_profile = UserProfile.new user_profiles_params
    @user_profile.user = current_user
    if @user_profile.save
      return redirect_to dashboard_onboarding_organization_profile_path if params[:onboarding]
      # redirect_to user_profile_edi, notice: <%= "'#{human_name} was successfully created.'" %>
    end
  end

  private

  def user_profiles_params
    params
      .require(:user_profile)
      .permit(:legal_name, :first_name, :last_name, :job_title, :phone_number)
  end
end
