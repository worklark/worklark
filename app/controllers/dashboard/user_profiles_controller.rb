class UserProfilesController < DashboardController
  def create
    @user_profile = UserProfile.new

  end

  private

  def user_profiles_params
    params
      .require(:user_profile)
      .permit(:registered_name, :operating_name, :shortname, :website)
  end
end
