class BandsController < ApplicationController
  def index
    @bands = Band.all
    @styles = Style.all
    @instruments = Instrument.all
    @filtered_parameters = request.parameters.with_indifferent_access.slice(:style, :needed_instrument, :query)


    @bands = Band.search_by_name_city_and_need(params[:query]) if params[:query].present?
    @bands = @bands.joins(:style).where(style: { name: params[:style] }) if params[:style].present?
    @bands = @bands.joins(:needed_instrument).where(needed_instrument: { name: params[:needed_instrument] }) if params[:needed_instrument].present?
  end

  def show
    @band = Band.find(params[:id])
    @chatroom = Chatroom.joins(:messages).where(band: @band, messages: {user: current_user}).first || Chatroom.create(band: @band)
    @user = current_user
    @users = @band.users

  end

  def new
  end

  def create
  end

  def edit
    @band = Band.find(params[:id])
    @users = @band.users
  end

  def update
  end


  private

  def band_params
    params.require(:band).permit(:name, :bio, :city, :users, :photo, :avatar, :style, :instruments, :needed_instrument)
  end
end
