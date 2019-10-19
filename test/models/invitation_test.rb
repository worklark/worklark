# == Schema Information
#
# Table name: invitations
#
#  id         :bigint           not null, primary key
#  approved   :boolean          default(FALSE)
#  business   :string           not null
#  email      :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_invitations_on_email  (email) UNIQUE
#

require 'test_helper'

class InvitationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
