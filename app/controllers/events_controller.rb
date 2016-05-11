class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    # go to create new form
  end

  def create
    event = Event.new
    event.name = params[:name]
    event.image= params[:image]
    event.event_time = params[:event_time]
    event.genre_id = params[:genre_id]
    event.venue_id = params[:venue_id]
    event.save
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.name = params[:name]
    @event.image= params[:image]
    @event.event_time = params[:event_time]
    @event.genre_id = params[:genre_id]
    @event.venue_id = params[:venue_id]
    @event.save
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy

  end

end
