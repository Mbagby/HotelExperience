class MessagesController < ApplicationController
  def index
  	@user = User.find_by_id(session[:user_id])
    @messages = Message.all
  end


  def create
  	@user = User.find_by_id(session[:user_id])
  	@message = Message.create(:content=> :content, :user_id=> @user.id)
    PrivatePub.publish_to("/messages")
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
