class AttendancesController < ApplicationController
  # POST /attendances
  # POST /attendances.json
  def create
    @attendance = Attendance.new
    event = Event.find(params['event_id'])
    @attendance.attended_event_id = params['event_id']
    @attendance.user_attended_id = current_user.id
    invitation = Invitation.find(params['invitation_id'])
    if @attendance.save
      invitation.update({ status: true })
      flash[:notice] = 'Invitation accepted!!'
    else
      flash[:notice] = 'Invitation not accepted!!'
    end
    redirect_to event_path(event)
  end

  def show
    @attendance = Attendance.all
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_attendance
    @attendance = Attendance.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end
