class UsersController < ApplicationController
before_update :reload_page


  def update
    @user = User.find(params[:id])  # Assuming the user ID is passed as a parameter

    @user.update(band: nil)


    @band = Band.find(params[:id])

    if @user.update
      @user.save
      redirect_to edit_band_path(@band)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:band_id)
  end
end
