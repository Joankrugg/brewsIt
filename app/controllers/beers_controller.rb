class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]
  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beers_path
    else
      render new
    end
  end

  def show

  end

  def edit
  end

  def update
    if @beer.update(beer_params)
      redirect_to beers_path
    else
      render :edit
    end
  end

  def destroy
    @beer.destroy
    redirect_to beers_path
  end

  private

  def set_beer
    @beer = Beer.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:name, :photo, :level, :yeast_id, :color_id, :taste_id, texture_ids: [], flavour_ids: [])
  end
end
