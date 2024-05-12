class PlacesController < ApplicationController
  before_action :set_beer, except: [:index]
  def index
    @places = @beer.places
  end

  def show
    @place = @beer.places.find(params[:id])
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

  private

  def set_beer
    @beer = Beer.find(params[:beer_id])
  end

  def place_params
    params.require(:place).permit(:name, :address, :city, :beer_id)
  end
end
