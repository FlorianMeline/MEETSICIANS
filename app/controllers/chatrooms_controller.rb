class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end

  def new
  end

  def create
    @chatroom = Chatroom.new
  end

end
