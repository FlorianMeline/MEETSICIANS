class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # redirect_to new_user_session_path
    @user = current_user
    @bands = Band.all
  end

end
