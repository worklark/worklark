require 'application_system_test_case'

class JobPostingsTest < ApplicationSystemTestCase
  driven_by :selenium, using: :headless_chrome

  def setup
    @one = job_descriptions :one
  end

  test 'logging in with an onboarded account let you create jobs' do
    login_with_onboarded_account
    assert_selector 'h1', text: 'Job'
  end

  test 'creating a job should redirect you to to creating job application requirements' do
    login_with_onboarded_account
    click_on 'New job'
    fill_in 'job_description[benefits]', with: @one.benefits
    select 'Pakistan', from: 'job_description[country]'
    fill_in 'job_description[department]', with: @one.department
    fill_in 'job_description[description]', with: @one.description
    fill_in 'job_description[education]', with: @one.education
    fill_in 'job_description[experience]', with: @one.experience
    fill_in 'job_description[hours_per_week]', with: @one.hours_per_week
    fill_in 'job_description[industry]', with: @one.industry
    fill_in 'job_description[internal_code]', with: @one.internal_code
    fill_in 'job_description[job_function]', with: @one.job_function
    fill_in 'job_description[job_title]', with: @one.job_title
    fill_in 'job_description[keywords]', with: @one.keywords
    fill_in 'job_description[region]', with: @one.region
    check 'job_description[remote]'
    fill_in 'job_description[requirements]', with: @one.requirements
    fill_in 'job_description[salary_currency]', with: @one.salary_currency
    fill_in 'job_description[salary_max_cents]', with: @one.salary_max_cents
    fill_in 'job_description[salary_min_cents]', with: @one.salary_min_cents
    fill_in 'job_description[salary_rate]', with: @one.salary_rate
    click_on 'Save job description'
    assert_selector 'div', text: 'Job description saved'
  end

  private

  def login_with_onboarded_account
    visit new_user_session_url
    # From the :onboarded fixture in users.yml
    fill_in 'Email',    with: 'bob@example.org'
    fill_in 'Password', with: '123greetings'
    click_on 'Log in', class: 'btn'
  end
end
