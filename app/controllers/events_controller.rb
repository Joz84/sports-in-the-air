class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    #sport = Sport.find_by_name("soccer")#params[sport])
    #@events = Event.where({ sport: sport})

    if research_params[:address].present?
      if research_params[:distance].present?
        activities = Event.near(research_params[:address], research_params[:distance])
      else
        activities = Event.near(research_params[:address], 100 )
      end
    else
      activities = Event.all
    end

    if research_params[:date].present?
      date = Date.parse(research_params[:date])
    else
      date = Date.today
    end

    @events = activities.select { |activity| activity.sport.id == (research_params[:sport]).to_i && activity.date == date }
    e = research_params
    #raise
    @hash = Gmaps4rails.build_markers(@events) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
      marker.infowindow render_to_string(partial: "/events/map_box", locals: { event: event })
    end
  end

  def show
    @participant = Participation.new
    @message = Message.new
    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
      marker.infowindow render_to_string(partial: "/events/map_box", locals: { event: event })
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      Participation.create(status: "organizer", user: current_user, event: @event)
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

  def research_params
    params.permit(:address,
                                  :date,
                                  :distance,
                                  :sport
                                  )
  end

  def set_event
    @event = Event.find(params[:id])
  end

end



