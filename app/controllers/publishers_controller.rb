class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all.order("founded ASC")
    @comics = Comic
  end

  def show
    @publisher = Publisher.find(params[:id])
  end
end
