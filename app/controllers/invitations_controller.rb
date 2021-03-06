class InvitationsController < ApplicationController
  layout 'static_pages'

  def create
    # Already on the list
    @invitation = Invitation.find_by email: params[:invitation][:email]
    if @invitation
      @applied = true
      @approved = @invitation.approved?
      render :list # guard clause
    end
    # New person
    @invitation = Invitation.new(invitation_params)
    render :list if @invitation.save
  end

  private

  def invitation_params
    params.require(:invitation).permit(:name, :business, :email)
  end
end
