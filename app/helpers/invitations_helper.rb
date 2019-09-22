module InvitationsHelper
  def invitation_number_by_id(id:)
    Invitation.where('id <= ? AND approved = false', id).count
  end
end
