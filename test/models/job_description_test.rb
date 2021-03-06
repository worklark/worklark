# == Schema Information
#
# Table name: job_descriptions
#
#  id                      :bigint           not null, primary key
#  benefits                :text
#  country                 :string
#  department              :string
#  description             :text
#  education               :string
#  experience              :string
#  hours_per_week          :integer
#  industry                :string
#  internal_code           :string
#  job_function            :string
#  job_title               :string
#  keywords                :string
#  region                  :string
#  remote                  :boolean
#  requirements            :text
#  salary_currency         :string
#  salary_max_cents        :integer
#  salary_min_cents        :integer
#  salary_rate             :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  organization_profile_id :bigint
#
# Indexes
#
#  index_job_descriptions_on_organization_profile_id  (organization_profile_id)
#

require 'test_helper'

class JobDescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
