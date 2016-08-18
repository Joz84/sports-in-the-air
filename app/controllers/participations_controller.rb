class ParticipationsController < ApplicationController
  def index
  end

  def create
    @event = Event.find(params[:event_id])
    @participant = @event.participations.new(participations_params)

    if @participant.save
      redirect_to event_path(@event)
    else
      render "events/show"
    end
  end

  def destroy
  end

  private

    def participations_params
      params.require(:participation).permit(:status, :review, :rating)
    end
end
