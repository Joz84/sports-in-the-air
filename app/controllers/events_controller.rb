class EventsController < ApplicationController
  def index
    sport = Sport.find(name: params[sport])
    @events = Event.where({ sport: sport})
    raise
  end

  def show
  end

  def destroy
  end

  def create
  end

  def edit
  end

  def update
  end

  def new
  end
end
