class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create 
    @genre = Genre.new(name: params[:genre][:name])
    @genre.save
    redirect_to genre_path(@genre)
  end

  def show
    #binding.pry
    @genre = Genre.find_by(params[:id])
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(name: params[:genre][:name])
    @genre.save
    redirect_to genre_path(@genre)
  end

end
