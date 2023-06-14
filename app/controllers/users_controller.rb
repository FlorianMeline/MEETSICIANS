class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    if @user.band.present?
      @banner_picture_user = @user.band.photo.key
    else
      @banner_picture_user = @user.avatar.key
    end
  end

  def update
    @user = User.find(params[:id])  # Assuming the user ID is passed as a parameter
    @user.update(band: nil)
    @band = Band.find(params[:id])

    if @user.update
      @user.save
      redirect_to band_path(@band)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:band_id)
  end
end
