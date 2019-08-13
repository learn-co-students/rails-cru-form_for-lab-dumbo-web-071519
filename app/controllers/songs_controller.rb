class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(permit)
    redirect_to @song
  end

  def show
    find_song
  end

  def edit
    find_song
  end

  def update
    find_song
    @song.update(permit)
    redirect_to @song
  end

  private

  def permit
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def find_song
    @song = Song.find(params[:id])
  end

end
