class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    comment = Comment.new
    comment.user_id = params[:user_id]
    comment.venue_id = params[:venue_id]
    comment.content = params[:content]
    comment.save
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    comment.user_id = params[:user_id]
    comment.venue_id = params[:venue_id]
    comment.content = params[:content]
    comment.save
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

end
