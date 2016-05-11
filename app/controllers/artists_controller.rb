class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    # go to create form
  end

  def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.gender = params[:gender]
    @artist.image = params[:image]
    @artist.event_id = params[:event_id]
    @artist.save
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.name = params[:name]
    @artist.gender = params[:gender]
    @artist.image = params[:image]
    @artist.event_id = params[:event_id]
    @artist.save
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
  end

end
