class ComicsController < ApplicationController
  def index
    @comics = Comic.includes(:title).all
  end

  def show
    @comic = Comic.find(params[:id])
  end
end
