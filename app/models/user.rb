class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  validate :invited_approved?

  def invited_approved?
    invitation = Invitation.find_by(email: email)
    invited = invitation.present? && invitation.approved?
    message = "Sorry, you need to be invited to sign up."
    errors.add(:invitation, message) unless invited
  end
end
