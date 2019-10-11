class ArtistsController < ApplicationController
  def index 
    @artists = Artist.all
  end 
  
  def show
    @artist = Artist.find(params[:id])
  end 
  
  def new 
    @artist = Artist.new
<<<<<<< HEAD
    
=======
>>>>>>> 2cf29233adb0df03e74bfb4a2f2ccbaf99d2ed49
  end 
 
  def create
    @artist = Artist.new(artist_params(:name, :bio)) 
    @artist.save
    redirect_to artist_path(@artist)
  end 
  
  def edit
    @artist = Artist.find(params[:id])
<<<<<<< HEAD
    
=======
    print params
>>>>>>> 2cf29233adb0df03e74bfb4a2f2ccbaf99d2ed49
  end
  
  def update
    @artist = Artist.find(params[:id])
    @artist = Artist.update(artist_params(:name, :bio))
<<<<<<< HEAD
    redirect_to artist_path(@artist)
=======
>>>>>>> 2cf29233adb0df03e74bfb4a2f2ccbaf99d2ed49
  end 
  
  private
  
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end 
end
