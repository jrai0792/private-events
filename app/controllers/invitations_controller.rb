class InvitationsController < ApplicationController
  def create
    user=User.where(name: params["invitee_name"]).first
    event=Event.find(params["event_id"])
    @invitation=Invitation.new
    @invitation.invitor_id=current_user.id
    @invitation.event_id=params["event_id"]
    @invitation.invitee_id=user.id
    if @invitation.save
        flash[:notice]="Invitation sent"
    else
        flash[:notice]="Invitation not sent"
    end
    redirect_to event_path(event)
  end
end
