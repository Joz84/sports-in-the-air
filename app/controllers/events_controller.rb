class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update, :destroy, :make_done]

  def index
    #sport = Sport.find_by_name("soccer")#params[sport])
    #@events = Event.where({ sport: sport})
    @events = Event.all
  end

  def show
    @participant = Participation.new
    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  def create
    @event = current_user.events.new(event_params)
    Participation.create(status: "organizer", user: current_user, event: @event)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    @event.save
    redirect_to @event
  end

  def new
    @event = Event.new
  end

  private

  def event_params
    params.require(:event).permit(:name,
                                  :required_level,
                                  :required_material,
                                  :description,
                                  :number_of_players,
                                  :status,
                                  :date,
                                  :time,
                                  :address,
                                  :sport_id
                                  )
  end

  def set_event
    @event = Event.find(params[:id])
  end

end



