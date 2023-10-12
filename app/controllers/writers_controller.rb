class WritersController < ApplicationController
  def index
    @writers = Writer.all.order("first_name ASC")
  end

  def show
    @writer = Writer.find(params[:id])
  end
end
