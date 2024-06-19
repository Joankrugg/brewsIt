class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]
  before_action :set_spot, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @spots = Spot.search_by_name(params[:query]).paginate(page: params[:page], per_page: 14)
    else
      @spots = Spot.all.order(:city).paginate(page: params[:page], per_page: 14)
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
      flash[:alert] = "Tous les champs sont à remplir"
      redirect_to new_spot_path
    end
  end

  def show
    @specificity = Specificity.new

  end

  def edit
  end

  def update
    if @spot.update(spot_params)
      redirect_to spot_path(@spot)
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
    params.require(:spot).permit(:name, :address, :city, :type_id, :active, :zipcode, :website)
  end
end
