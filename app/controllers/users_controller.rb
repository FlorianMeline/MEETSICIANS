class UsersController < ApplicationController


  def destroy
    raise
    @band = Band.find(params[:band_id])  # Assuming the band ID is passed as a parameter
    @user = User.find(params[:user_id])  # Assuming the user ID is passed as a parameter

    if @band.users.include?(@user)
      @user.update(band_id: nil)
    else
      # The user does not belong to the band
      # Handle the error or any required action
      puts "The user does not belong to the band."
    end
  end
end
