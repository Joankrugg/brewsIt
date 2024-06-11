class TrackrsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @trackr = Trackr.new
  end

  def create
    @trackr = Trackr.new(trackr_params)
    if @trackr.save
      redirect_to trackr_path(@trackr)
    else
      render new
    end
  end

  def show

    @trackr = Trackr.find_by(id: params[:id])
    if @trackr.nil?
      flash[:alert] = "Trackr not found."
      redirect_to trackrs_path
    else
      @matching_styles = Style.with_minimum_points(@trackr, 6)
      @beers = Beer.all
    end
  end

  private

  def trackr_params
    params.require(:trackr).permit(:level_min, :level_max, :yeast_id, :color_id, :taste_id, texture_ids: [], flavour_ids: [])
  end

end
