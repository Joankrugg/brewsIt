class StylesController < ApplicationController
  before_action :set_style, only: [:show, :edit, :update, :destroy]
  def index
    @styles = Style.all
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
    params.require(:style).permit(:name, :photo, :level_min, :level_max, :yeast_id, :color_id, :taste_id, texture_ids: [], flavour_ids: [])
  end

end
