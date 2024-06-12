class PublicationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]
  before_action :set_publication, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @publications = Publication.search_by_name(params[:query]).paginate(page: params[:page], per_page: 10)
    else
      @publications = Publication.all.order(:created_at).paginate(page: params[:page], per_page: 10)
    end

    # Not too clean but it works!
    if turbo_frame_request?
      render partial: "publications", locals: { publications: @publications }
    else
      render :index
    end
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    if @publication.save
      redirect_to publications_path
    else
      render new
    end
  end

  def show

  end

  def edit
  end

  def update
    if @publication.update(publication_params)
      redirect_to publications_path
    else
      render :edit
    end
  end

  def destroy
    @publication.destroy
    redirect_to publications_path
  end

  private

  def set_publication
    @publication = Publication.find(params[:id])
  end

  def publication_params
    params.require(:publication).permit(:title, :photo, :content, :link)
  end

end
