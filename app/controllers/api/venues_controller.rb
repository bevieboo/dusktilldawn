module Api
      class VenuesController < ApplicationController

        def index
          @venues = Venue.all
          render json: @venues.to_json(methods: :like_count), status: 201
        end

        def new
          #new form
        end

        def create
          venue = Venue.new
          venue.name = params[:name]
          venue.address = params[:address]
          venue.suburd = params[:suburd]
          venue.postcode = params[:postcode]
          venue.venue_type = params[:venue_type]
          venue.image = params[:image]
          venue.user_id = params[:user_id]
          venue.description = params[:description]
          venue.save
          render json: venue.to_json, status: 201
        end

        def show
          @venue = Venue.find(params[:id])
          # render json: @venue.to_json, status: 201
          @comments = @venue.comments
          data = {venue: @venue, comments: @comments}
          render json: data.to_json, status: 201
        end

        def update
          venue.name = params[:name]
          venue.address = params[:address]
          venue.suburd = params[:suburd]
          venue.postcode = params[:postcode]
          venue.venue_type = params[:venue_type]
          venue.image = params[:image]
          venue.user_id = params[:user_id]
          venue.description = params[:description]
          venue.save
          render json: venue.to_json, status: 201
        end

        def destroy
          venue = Venue.find(params[:id])
          venue.destroy
        end

      end
end
