module Api
    class ArtistsController < ApplicationController

      def index
        artists = Artist.all
        render json: artists.to_json, status: 201
      end

      def new
        # go to create form
      end

      def create
        artist = Artist.new
        artist.name = params[:name]
        artist.gender = params[:gender]
        artist.image = params[:image]
        artist.event_id = params[:event_id]
        artist.save
        render json: artist.to_json, status: 201
      end

      def show
        artist = Artist.find(params[:id])
        render json: artist.to_json, status: 201
      end

      def update
        artist = Artist.find(params[:id])
        artist.name = params[:name]
        artist.gender = params[:gender]
        artist.image = params[:image]
        artist.event_id = params[:event_id]
        artist.save
        render json: artist.to_json, status: 201
      end

      def destroy
        artist = Artist.find(params[:id])
        artist.destroy
      end

    end
end
