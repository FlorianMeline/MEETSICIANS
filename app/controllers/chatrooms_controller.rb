class ChatroomsController < ApplicationController
  def index
    @chatrooms_band = current_user.band_chatrooms
    @chatrooms_joined = current_user.chatrooms_joined
    @user = current_user
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @user = current_user
  end

  def create
    @chatroom = Chatroom.new
  end

  def update_user
    @chatroom = Chatroom.find(params[:id])
    @users = @chatroom.users
    @user = @users.find { |user| user.band_id == nil }
    if @user.update(band: @chatroom.band)
      redirect_to chatrooms_path(@chatrooms)
    end
  end
end
