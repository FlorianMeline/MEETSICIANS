class ProfilesController < ApplicationController
  def show
    @user = current_user
    @button_band = ""
    @banner_picture_user = @user.avatar.key

    if @user.band.present?
      @button_band = "edit your"
      @banner_picture_user = @user.band.photo.key
    else
      @button_band = "create a"
    end
  end
end
