class ProfilesController < ApplicationController
  def show
    @user = current_user
    @button_band = ""
    @banner_picture_user = @user.avatar.key

    if @user.band.present?
      @button_band = "Go to your"
      @banner_picture_user = @user.band.photo.key
    else
      @button_band = "Create a"
    end
  end

  private

  def user_params
    params.require(:user).permit(:band_id, :first_name, :last_name, :bio, :city, :instrument_id, :style_id, :video_url)
  end

  def band_params
    params.require(:user).permit(:first_name, :last_name, :bio, :city, :band_id, :photo, :avatar, :style_id,:instrument_id, :video_url)
  end
end
