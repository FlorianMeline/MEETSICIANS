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
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @current_user = current_user
    if @band.save
      redirect_to band_path(@band)
      current_user.update(band_id: @band.id)
    else
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
    @users = @band.users
    respond_to do |format|
      format.html { render :edit, locals: { band: @band } }
    end
  end

  def update
    @band = Band.find(params[:id])  # Assuming the user ID is passed as a parameter

    if @band.update(band_params)
      redirect_to band_path(@band)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def band_params
    params.require(:band).permit(:name, :bio, :city, :users, :photo, :avatar, :style_id, :needed_instrument_id, :video_url)
  end
end
