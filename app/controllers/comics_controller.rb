class ComicsController < ApplicationController
  # root_path
  def index
    # @comics = Comic.includes(:title).all
    @comics = Comic.page(params[:page]).per(30)
  end

  # GET /comics/:id
  def show
    @comic = Comic.find(params[:id])
  end
end
