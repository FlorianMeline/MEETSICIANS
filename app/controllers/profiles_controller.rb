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

  def edit
  end

  def update
  end

end
