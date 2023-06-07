class BandsController < ApplicationController
  def index
  end

  def show
    @band = Band.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

end
