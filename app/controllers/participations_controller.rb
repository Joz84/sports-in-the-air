class ParticipationsController < ApplicationController
  def index
  end

  def create
    @event = Event.find(params[:event_id])
    if not @event.participations.find_by_user_id(current_user.id)
      @participant = @event.participations.new(user: current_user)
      @participant.status = Participation.give_status(@event)
      if @participant.save
        redirect_to event_path(@event)
      else
        render "events/show"
      end
    end


  end

  def index
    @participations = current_user.participations.all
  end

  def destroy
    @event = Event.find(params[:id])
    participation = @event.participations.find_by_user_id(current_user.id)
    # participation.messages.each do |message|
    #   message.participation = nil
    #   message.save
    # end
    participation.destroy
    redirect_to @event
  end

  private

    def participations_params
      params.require(:participation).permit(:status, :review, :rating)
    end
end
