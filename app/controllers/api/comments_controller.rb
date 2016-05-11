module Api

    class CommentsController < ApplicationController

      def index
        @comments = Comment.all
        render json: @comments.to_json, status: 201
      end

      def create
        comment = Comment.new
        comment = params[:user_id]
        comment = params[:venue_id]
        comment.save
        render json: comment.to_json, status: 201
      end

      def show
        comment = Comment.find(params[:id])
        render json: comment.to_json, status: 201
      end

      def update
        comment = Comment.find(params[:id])
        comment = params[:user_id]
        comment = params[:venue_id]
        comment.save
        render json: comment.to_json, status: 201
      end

      def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
      end

    end
end
