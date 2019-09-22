class InvitationsController < ApplicationController
  layout "static_pages"

  def create
    # Already on the list
    @invitation = Invitation.find_by email: params[:invitation][:email]
    if @invitation
      @already_invited = true
      render :list # guard clause
    end
    # New person
    @invitation = Invitation.new(invitation_params)
    if @invitation.save
      render :list
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:name, :business, :email)
  end
end
