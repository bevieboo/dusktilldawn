class LikesController < ApplicationController
  # def index
  #   @likes = Like.all
  # end

  def create
    like = Like.new
    like = params[:user_id]
    like = params[:venue_id]
    like.save
  end
  #
  # def show
  #   @like = Like.find(params[:id])
  # end

  # def update
  #   @like = Like.find(params[:id])
  #   @like.user_id = params[:user_id]
  #   @like.venue_id = params[:venue_id]
  #   @like.save
  # end

  # def destroy
  #   @like = Like.find(params[:id])
  #   @like.destroy
  # end

end
