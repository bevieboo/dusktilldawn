module Api
  class LikesController < ApplicationController
    # def index
    #   @likes = Like.all
    # end

    def create
      @venue = Venue.find(params[:venue_id])
      like = Like.new
      # like.user_id = params[:user_id]
      like.venue_id = params[:venue_id]
      like.save
      data = {like_count: @venue.like_count}
      # how many like count for this venue
      render json: data.to_json, status: 201
    end
    #
    # def show
    #   @like = Like.find(params[:id])
    # end

    # def update
    #   @like = Like.find(params[:id])
    #   @like = params[:user_id]
    #   @like = params[:venue_id]
    #   @like.save
    # end

    # def destroy
    #   @like = Like.find(params[:id])
    #   @like.destroy
    # end

  end
end
