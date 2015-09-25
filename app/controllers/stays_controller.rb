class StaysController < ApplicationController


  def index
  	@user = User.find_by_id(params[:user_id])
    @currentDate = Time.now.strftime("%m/%d/%Y %H:%M")
  	@stays = @user.stays.order('checkout')
    @room = Room.find_by_id(params[:room_id])
  end	

  def new
  	@stay = Stay.new
  	@user = User.find_by_id(session[:user_id])
  	@hotels = Hotel.all
  	@rooms = Room.all
  end

  def create
    @user = User.find_by_id(session[:user_id])
  	@stay = @user.stays.create(stay_params)
  	if @stay
  		redirect_to user_stays_path(session[:user_id]), flash: {success: "Created!"}
    else
    	redirect_to new_user_stay_work_order_path(@user.id, Stay.find(params[:stay_id])), flash: {error: @stay.errors.full_messages}
    end


  end

  def show
    @currentDate = Time.now.strftime("%m/%d/%Y %H:%M")
    @stay = Stay.find_by_id(params[:id])
    @user = User.find_by_id(session[:user_id])
  end

  def edit
  end


private

  def stay_params
  	params.require(:stay).permit(
  		:title,
  		:checkin,
  		:checkout,
  		:hotel_id,
  		:room_id,
  		:user_id
  		)
  end

end
