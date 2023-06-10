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
    @users = @band.users
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    @current_user = current_user
    if @band.save
      redirect_to @band
      current_user.update(band_id: @band.id)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  private

  def band_params
    params.require(:band).permit(:name, :bio, :city, :style_id, :needed_instrument_id, :video_url, :photo, :avatar)
  end
end
# create_table "bands", force: :cascade do |t|
#   t.string "name"
#   t.text "bio"
#   t.string "city"
#   t.bigint "style_id", null: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.bigint "needed_instrument_id"
#   t.string "video_url"
#   t.index ["needed_instrument_id"], name: "index_bands_on_needed_instrument_id"
#   t.index ["style_id"], name: "index_bands_on_style_id"
# end
