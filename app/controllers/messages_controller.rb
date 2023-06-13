class MessagesController < ApplicationController
  def new
  end

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  def update
    @users = User.all
    @user = User.find(params[:id])  # Assuming the user ID is passed as a parameter
    @band = Band.find(params[:id])
    @current_user = current_user.band
    unless @user.sender? == current_user
      @user.update(band: @current_user)
    end

    if @user.update
      @user.save
      redirect_to edit_band_path(@band)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def user_params
    params.require(:user).permit(:band_id)
  end
end
