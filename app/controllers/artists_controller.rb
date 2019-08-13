class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(permit)
    redirect_to @artist
  end

  def show
    find_artist
  end

  def edit
    find_artist
  end

  def update
    find_artist
    @artist.update(permit)
    redirect_to @artist
  end

  private

  def permit
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end

end
