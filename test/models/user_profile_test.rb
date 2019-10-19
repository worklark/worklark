# == Schema Information
#
# Table name: user_profiles
#
#  id           :bigint           not null, primary key
#  first_name   :string           not null
#  job_title    :string           not null
#  last_name    :string           not null
#  legal_name   :string           not null
#  phone_number :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_user_profiles_on_user_id  (user_id)
#

require 'test_helper'

class UserProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
