class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all.order("founded ASC")
  end

  def show
    @publisher = Publisher.find(params[:id])

    @comic_result = if params[:author_id].nil?
                      Publisher.find(params[:id]).comics
                    else
                      Publisher.find(params[:id]).comics.where("writer_id == #{params[:author_id]}")
                    end

    @id = params[:id]
    @writer = Writer.joins(:comics).where("publisher_id == " + params[:id]).distinct
  end
end
