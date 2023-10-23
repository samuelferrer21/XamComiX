class EditionsController < ApplicationController
  # GET /editions
  def index
    @editions = Edition.includes(:comics).all
  end

  # GET /editions/:id
  def show
    @edition = Edition.find(params[:id])

    @comics_collected = Edition.find(params[:id]).comics
    @comics_collected = @comics_collected.order("release_date DESC").page(params[:page]).per(20)

  end
end
