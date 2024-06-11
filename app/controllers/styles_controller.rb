class StylesController < ApplicationController
  before_action :set_style, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @styles = Style.search_by_name(params[:query]).paginate(page: params[:page], per_page: 15)
    else
      @styles = Style.all.paginate(page: params[:page], per_page: 15)
    end

    # Not too clean but it works!
    if turbo_frame_request?
      render partial: "styles", locals: { styles: @styles }
    else
      render :index
    end
  end

  def new
    @style = Style.new
  end

  def create
    @style = Style.new(style_params)
    if @style.save
      redirect_to styles_path
    else
      render new
    end
  end

  def show
    @beers = Beer.all
  end

  def edit
  end

  def update
    if @style.update(style_params)
      redirect_to styles_path
    else
      render :edit
    end
  end

  def destroy
    @style.destroy
    redirect_to styles_path
  end


  private

  def set_style
    @style = Style.find(params[:id])
  end

  def style_params
    params.require(:style).permit(:name, :photo, :origin, :style_family, :description, :level_min, :level_max, :yeast_id, :color_id, :taste_id, texture_ids: [], flavour_ids: [])
  end

end
