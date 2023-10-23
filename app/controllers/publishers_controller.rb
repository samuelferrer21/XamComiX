class PublishersController < ApplicationController
  # GET /publishers
  def index
    @publishers = Publisher.all.order("founded ASC")
  end

  # GET /publishers/:id
  def show
    @publisher = Publisher.find(params[:id])
    # Used to retrieve the writer names in the show page.
    @writer_name = if !params[:author_id].nil? && Writer.exists?(id: params[:author_id])
                     Writer.find(params[:author_id])
                   end

    # Determines if to apply filter or not.
    @comic_result = if params[:author_id].nil? || !Writer.exists?(id: params[:author_id])
                      Publisher.find(params[:id]).comics
                    else
                      Publisher.find(params[:id]).comics.where("writer_id == #{params[:author_id]}")
                    end

    @comic_result = @comic_result.order("release_date DESC").page(params[:page]).per(30)

    # Gets all the common writers that have published comics with particular publisher.
    @writer = Writer.joins(:comics).where("publisher_id == " + params[:id]).distinct
  end
end
