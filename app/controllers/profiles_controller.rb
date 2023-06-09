class ProfilesController < ApplicationController
  def show
    @user = current_user
    @button_band = ""

    if @user.band.present?
      @button_band = "edit"
    else
      @button_band = "create"
    end
  end
end
