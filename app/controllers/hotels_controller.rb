class HotelsController < ApplicationController
  def index
  	@hotels= Hotel.all
  end

  def edit
  end

  def new
  end

  def show
  end
end
