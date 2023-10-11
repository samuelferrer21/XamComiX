class ComicsController < ApplicationController
  def index
    # @movies = Movie.all This creates the N+1 problem refers to movies whereas N refers to the production companies
    # In short we a redundantly calling the database which can be expensive
    @comics = Comic.includes(:title).all
  end

  def show
    @comic = Comic.find(params[:id])
  end
end
