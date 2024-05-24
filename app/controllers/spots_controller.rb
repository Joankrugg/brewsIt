class SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @spots = Spot.search_by_name(params[:query])
    else
      @spots = Spot.all
    end

    # Not too clean but it works!
    if turbo_frame_request?
      render partial: "spots", locals: { spots: @spots }
    else
      render :index
    end
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to spots_path
    else
      render new
    end
  end

  def show

  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      redirect_to spots_path
    else
      render :edit
    end
  end

  def destroy
    @spot.destroy
    redirect_to spots_path
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:name, :address, :city, :type_id, :active)
  end
end
