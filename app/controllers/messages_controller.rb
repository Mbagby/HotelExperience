class MessagesController < ApplicationController
  def index
  	@user = User.find_by_id(session[:user_id])
    @messages = Message.last(10)
    @users = User.all
  end


  def create
  	@user = User.find_by_id(session[:user_id])
  	@message = @user.messages.create message_params
    @message.user_id = @user.id
  end


  def all
  	@messages = Message.all
  end

  private

  def message_params
  	params.require(:message).permit(
  		:content,
  		:user_id
  		)
  end

end
