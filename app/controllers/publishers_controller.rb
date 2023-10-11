class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all.order("founded ASC")
  end

  def show; end
end
