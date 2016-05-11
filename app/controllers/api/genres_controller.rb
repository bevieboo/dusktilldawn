module Api
    class GenresController < ApplicationController

      def index
        genres = Genre.all
        render json: genres.to_json, status: 201
      end

      def create
        genre = Genre.new
        genre.name = params[:name]
        genre.save
        render json: genre.to_json, status: 201
      end

      def show
        genre = Genre.find(params[:id])
        render json: genre.to_json, status: 201
      end

      def update
        genre = Genre.find(params[:id])
        genre.name = params[:name]
        genre.save
        render json: genre.to_json, status: 201
      end

      def destroy
        genre = Genre.find(params[:id])
        genre.destroy
      end

    end
end
