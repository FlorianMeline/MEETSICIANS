class BandsController < ApplicationController
  def index
    @bands = Band.all
    if params[:query].present?
      @bands = Band.search_by_name_city_and_need(params[:query])
    else
      @bands = Band.all
    end
  end

  def show
    @band = Band.find(params[:id])
    @chatroom = Chatroom.joins(:messages).where(band: @band, messages: {user: current_user}).first || Chatroom.create(band: @band)
    @users = @band.users
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
