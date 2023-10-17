class WritersController < ApplicationController
  # GET /writers
  def index
    # @writers = Writer.all.order("first_name ASC")
    @writers = Writer.order(:first_name).page(params[:page]).per(10)
  end

  # GET /writers/:id
  def show
    @writer = Writer.find(params[:id])
  end
end
