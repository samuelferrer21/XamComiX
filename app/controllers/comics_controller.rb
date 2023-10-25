class ComicsController < ApplicationController
  # root_path
  def index
    # @comics = Comic.includes(:title).all

    @comics = if params[:comic_name].nil?
                Comic.includes(:publisher).page(params[:page]).per(30)
              else
                Comic.includes(:publisher).where("title LIKE  '%#{params[:comic_name]}%'").page(params[:page]).per(30)
              end

    # @comic_result = @comic_result.order("release_date DESC").page(params[:page]).per(30)
  end

  # GET /comics/:id
  def show
    @comic = Comic.find(params[:id])
  end
end
