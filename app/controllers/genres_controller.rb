class GenresController < ApplicationController

  def index
    @genres = Genres.all
  end

  def new
  end

  def create
    # post from form
  end

  def show
  end

  def update
  end

  def delete
    @genre = Genre.find(params[:id])
    @genre.destroy
  end

end
