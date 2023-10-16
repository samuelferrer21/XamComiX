class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all.order("founded ASC")
  end

  def show
    @publisher = Publisher.find(params[:id])

    # if params[:author_id] == nil?
    #   @comic_result = Publisher.find(params[:id]).comics
    # else
    #   Publisher.find(params[:id]).comics
    # end

    @comic_result = if params[:author_id].nil?
                      Publisher.find(params[:id]).comics
                    else
                      Publisher.find(params[:id]).comics.where("writer_id == #{params[:author_id]}")
                    end

    @id = params[:id]
    @currentAuthor = if params[:author_id].nil?
                       "none"
                     else
                       params[:author_id]
                     end
    @writer = Writer.joins(:comics).where("publisher_id == " + params[:id]).distinct
  end

  # def showFilter
  #   @comic_result = Publisher.find(params[:id]).comics.where("writer_id == #{params[:author_id]}")
  #   @id = params[:id]
  #   @writer = Writer.joins(:comics).where("publisher_id == " + params[:id]).distinct
  # end
end
