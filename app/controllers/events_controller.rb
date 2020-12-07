class EventsController < ApplicationController
  def index
    @events = Event.all
    @past_events = Event.past
    @future_events = Event.future
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:location, :start_date, :eventname, :description)
  end
end
