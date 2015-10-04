class EveningservicesController < ApplicationController
  def index
  	@eveningservices = Eveningservice.all.order('appointment_date')
    @stays = Stay.all
    @hotels = Hotel.all
    @rooms = Room.all
    @user = User.find_by_id(session[:user_id])
  end

  def new
  	@user = User.find_by_id(session[:user_id])
    @stay = Stay.find(params[:stay_id])
    @eveningservice = Eveningservice.new
  end

  def create
    @user = User.find_by_id(session[:user_id])
  	@stay = Stay.find(params[:stay_id])
    @hotels = Hotel.all
    @rooms = Room.all
  	@eveningservice = @user.eveningservices.create eveningservice_params
    @eveningservice.stay_id = @stay.id
    @eveningservice.hotel_id = @hotels.find_by_id(@stay.hotel_id).id
    @eveningservice.room_id = @rooms.find_by_id(@stay.room_id).id

  	if @eveningservice.save
  		redirect_to user_eveningservices_path(session[:user_id])
 	  else
 		   redirect_to new_user_stay_eveningservices_path(session[:user_id],params[:stay_id])
 	  end
  end


  def edit
    @user = User.find_by_id(session[:user_id])
    @hotels = Hotel.all
    @rooms = Room.all
    @eveningservice = Eveningservice.find_by_id(params[:id])
  end

  def update
    @stay = Stay.find_by_id(params[:id])
    @user = User.find_by_id(session[:user_id])
    @eveningservice = Eveningservice.find_by_id(params[:id])
    @eveningservice.update eveningservice_params
    redirect_to user_eveningservices_path(session[:user_id])
  end


  def show
  	@eveningservice= Eveningservice.find_by_id(params[:id])
  end

  def destroy
    @eveningservice = Eveningservice.find_by_id(params[:id])
    @eveningservice.destroy
    redirect_to user_eveningservices_path(session[:user_id]), alert: "Turn Down Service Appointment Deleted!"

  end

  private
    def eveningservice_params
      params.require(:eveningservice).permit(:appointment_date, :appointment_time, :completion, :user_id, :hotel_id, :room_id, :stay_id)
    end
end
