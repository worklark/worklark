# == Schema Information
#
# Table name: organization_profiles
#
#  id              :bigint           not null, primary key
#  operating_name  :string           not null
#  registered_name :string
#  shortname       :string           not null
#  website         :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_organization_profiles_on_user_id  (user_id)
#

require 'test_helper'

class OrganizationProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
