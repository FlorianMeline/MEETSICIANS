class ChatroomsController < ApplicationController
  def index
    @chatrooms_band = current_user.band_chatrooms
    @chatrooms_joined = current_user.chatrooms_joined
    # raise
    @preview = Message.last.content
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.new
  end
end
