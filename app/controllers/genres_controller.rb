class GenresController < ApplicationController

  def index
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(permit)
    redirect_to @genre
  end

  def show
    find_genre
  end

  def edit
    find_genre
  end

  def update
    find_genre
    @genre.update(permit)
    redirect_to @genre
  end

  private

  def permit
    params.require(:genre).permit(:name)
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end

end
