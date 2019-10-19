class Dashboard::JobDescriptionsController < DashboardApplicationController
  def new
    @job_description = JobDescription.new
  end

  def create
    @job_description = JobDescription.new job_description_params
    @job_description.organization_profile = current_user.organization_profile
  end

  private

  def job_description_params
    params.require(:job_description)
          .permit(
            :benefits, :country, :department,
            :description, :education, :experience,
            :hours_per_week, :industry, :internal_code,
            :job_function, :job_title, :keywords,
            :region, :remote, :requirements,
            :salary_currency, :salary_max_cents, :salary_min_cents,
            :salary_rate
          )
  end
end
