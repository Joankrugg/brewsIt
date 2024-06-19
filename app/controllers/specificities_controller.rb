# app/controllers/specificities_controller.rb
class SpecificitiesController < ApplicationController
  before_action :set_spot

  def new
    @specificity = @spot.build_specificity
  end

  def create
    @specificity = @spot.build_specificity(specificity_params)
    if @specificity.save
      redirect_to @spot, notice: 'Specificity was successfully created.'
    else
      render :new
    end
  end

  def show
    @specificity = @spot.specificity
  end

  def edit
    @specificity = @spot.specificity || @spot.build_specificity
  end

  def update
    @specificity = @spot.specificity || @spot.build_specificity
    if @specificity.update(specificity_params)
      respond_to do |format|
        format.html { redirect_to @spot, notice: 'Specificity was successfully updated.' }
        format.js   # Renders update.js.erb
      end
    else
      render :edit
    end
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def specificity_params
    params.require(:specificity).permit(:snack, :happy_hour, :cheapest_beer, :draft_number)
  end
end


