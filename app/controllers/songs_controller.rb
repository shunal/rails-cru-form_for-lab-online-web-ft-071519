class SongsController < ApplicationController
  def index 
<<<<<<< HEAD
    @songs = Song.all 
=======
    @songs = Songs.all 
>>>>>>> 2cf29233adb0df03e74bfb4a2f2ccbaf99d2ed49
  end 
  
  def show
    @song = Song.find(params[:id])
  end 
  
  def new 
    @song = Song.new
  end 
 
  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end 
  
  def edit
    @song = Song.find(params[:id])
  end
  
  def update
   @song = Song.find(params[:id])
   @song = Song.update(song_params(:name, :artist_id, :genre_id))
   redirect_to song_path(@song)
  end 
  
  private
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
