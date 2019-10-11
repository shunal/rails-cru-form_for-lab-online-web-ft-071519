class GenresController < ApplicationController
  def index 
    @genres = Genre.all
  end 
  
  def show
    @genre = Genre.find(params[:id])
  end 
  
  def new 
    @genre = Genre.new
  end 
 
  def create
    @genre = Genre.new(genre_params(:name))
    @genre.save
<<<<<<< HEAD
    redirect_to genre_path(@genre)
=======
    redirect_to genre_path
>>>>>>> 2cf29233adb0df03e74bfb4a2f2ccbaf99d2ed49
  end 
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
   @genre = Genre.find(params[:id])
<<<<<<< HEAD
   @genre = Genre.update(genre_params(:name))
   redirect_to genre_path(@genre)
=======
   @genre = Genre.update(genre_params(:name)
>>>>>>> 2cf29233adb0df03e74bfb4a2f2ccbaf99d2ed49
  end 
  
  private
  
  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
