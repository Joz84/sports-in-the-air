class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @event = Event.find(:event_id)
    participation = @event.participations.find_by_user_id(current_user.id)
    @message.participation = participation
    if @message.save
      redirect_to @event
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:event).permit(:content, :event_id)
  end

end
