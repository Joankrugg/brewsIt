class BeersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]
  before_action :set_beer, only: [:show, :edit, :update, :destroy]
  include Turbo::FramesHelper

  def index
    if params[:query].present?
      @beers = Beer.search_by_name(params[:query]).paginate(page: params[:page], per_page: 15)
    else
      @beers = Beer.all.order(:name).paginate(page: params[:page], per_page: 15)
    end

    # Not too clean but it works!
    if turbo_frame_request?
      render partial: "beers", locals: { beers: @beers }
    else
      render :index
    end
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beer_path(@beer)
    else
      render :new
    end
  end

  def show
    @place = @beer.places.build
  end

  def edit
  end

  def update
    if @beer.update(beer_params)
      redirect_to beer_path(@beer)
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
    params.require(:beer).permit(:name, :photo, :level, :style_id, :yeast_id, :color_id, :taste_id, texture_ids: [], flavour_ids: [])
  end
end
