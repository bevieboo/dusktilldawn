class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def create
    genre = Genre.new
    genre.name = params[:name]
    genre.save
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.find(params[:id])
    genre.name = params[:name]
    genre.save
  end

  def destroy
    genre = Genre.find(params[:id])
    genre.destroy
  end

end
