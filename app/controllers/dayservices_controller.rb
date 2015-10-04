class DayservicesController < ApplicationController

  def index
  	@dayservices = Dayservice.all.order('appointment_date')
    @stays = Stay.all
    @hotels = Hotel.all
    @rooms = Room.all
    @user = User.find_by_id(session[:user_id])
  end

  def new
  	@user = User.find_by_id(session[:user_id])
    @stay = Stay.find(params[:stay_id])
    @dayservice = Dayservice.new
  end

  def create
    @user = User.find_by_id(session[:user_id])
  	@stay = Stay.find(params[:stay_id])
    @hotels = Hotel.all
    @rooms = Room.all
  	@dayservice = @user.dayservices.create dayservice_params
    @dayservice.stay_id = @stay.id
    @dayservice.hotel_id = @hotels.find_by_id(@stay.hotel_id).id
    @dayservice.room_id = @rooms.find_by_id(@stay.room_id).id

  	if @dayservice.save
  		redirect_to user_dayservices_path(session[:user_id])
 	  else
 		   redirect_to new_user_stay_dayservices_path(session[:user_id],params[:stay_id])
 	  end
  end


  def edit
    @user = User.find_by_id(session[:user_id])
    @hotels = Hotel.all
    @rooms = Room.all
    @dayservice = Dayservice.find_by_id(params[:id])
  end

  def update
    @stay = Stay.find_by_id(params[:id])
    @user = User.find_by_id(session[:user_id])
    @dayservice = Dayservice.find_by_id(params[:id])
    @dayservice.update dayservice_params
    redirect_to user_dayservices_path(session[:user_id])
  end


  def show
  	@dayservice= Dayservice.find_by_id(params[:id])
  end

  def destroy
    @dayservice = Dayservice.find_by_id(params[:id])
    @dayservice.destroy
    redirect_to user_dayservices_path(session[:user_id]), alert: "Housekeeping Appointment Deleted!"

  end

  private
    def dayservice_params
      params.require(:dayservice).permit(:appointment_date, :appointment_time, :completion, :user_id, :hotel_id, :room_id, :stay_id)
    end
end
