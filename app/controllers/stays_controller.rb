class StaysController < ApplicationController


  def index
  	@user = User.find_by_id(params[:user_id])
    @currentDate = Time.now.strftime("%m/%d/%Y %H:%M")
  	@stays = @user.stays.order('checkin')
    @rooms = Room.all
    @hotels = Hotel.all
  end	

  def new
  	@stay = Stay.new
  	@user = User.find_by_id(session[:user_id])
  	@hotels = Hotel.all
  	@rooms = Room.all
  end

  def create
    @user = User.find_by_id(session[:user_id])
  	@stay = @user.stays.create stay_params 
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
    @hotels = Hotel.all
    @rooms = Room.all
  end

  def edit
    @stay = Stay.find_by_id(params[:id])
    @user = User.find_by_id(session[:user_id])
    @hotels = Hotel.all
    @rooms = Room.all
  end

  def update
    @stay = Stay.find_by_id(params[:id])
    @user = User.find_by_id(session[:user_id])
    @stay.do_not_disturb = params[:stay]
    @stay.update_attribute(:do_not_disturb, @stay.do_not_disturb)

    @stay.update stay_params
    if @stay.save
      redirect_to user_stay_path(session[:user_id], params[:id])
    else
      render :edit
    end

  end

  def destroy
    @stay = Stay.find_by_id(params[:id])
    @stay.destroy
        redirect_to user_stays_path(session[:user_id]), alert: "Stay destroyed!"

  end




private

  def stay_params
  	params.require(:stay).permit(
  		:title,
  		:checkin,
  		:checkout,
  		:hotel_id,
  		:room_id,
  		:user_id,
      :do_not_disturb
  		)
  end

end

