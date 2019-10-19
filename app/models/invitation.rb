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

class Invitation < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :name, presence: true
  validates :business, presence: true
end
