class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create ]
  before_action :set_beer
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    @places = @beer.places
  end

  def new
    @place = @beer.places.build
  end

  def create
    @place = @beer.places.build(place_params)

    if @place.save
      redirect_to @beer, notice: 'Place was successfully created.'
    else
      render :new
    end
  end

  def show
    @place = @beer.places.find(params[:id])
  end

  def destroy
    @place.destroy
    redirect_to @beer, notice: 'Place was successfully destroyed.'
  end

  private

  def set_beer
    @beer = Beer.find(params[:beer_id])
  end

  def set_place
    @place = @beer.places.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :address, :city, :beer_id)
  end
end
