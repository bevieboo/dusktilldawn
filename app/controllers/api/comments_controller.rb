module Api

    class CommentsController < ApplicationController

      def index
        @comments = Comment.all
      end

      def create
        comment = Comment.new
        comment = params[:user_id]
        comment = params[:venue_id]
        comment.save
      end

      def show
        @comment = Comment.find(params[:id])
      end

      def update
        comment = Comment.find(params[:id])
        comment = params[:user_id]
        comment = params[:venue_id]
        comment.save
      end

      def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
      end

    end
end
