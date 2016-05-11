
class EventsController < ApplicationController

  def index
   if params[:search_box] != ''
         genre = Genre.find_by(name: params[:search_box])
         if genre != nil
            @events = genre.events
            render :index
         else
            redirect_to '/'
         end
    else
        redirect_to '/'
    end
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
