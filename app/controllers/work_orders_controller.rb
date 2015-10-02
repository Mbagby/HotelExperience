class WorkOrdersController < ApplicationController

  def index
  	@workOrders = WorkOrder.all.order('created_at')
    @stays = Stay.all
    @hotels = Hotel.all
    @rooms = Room.all
    @user = User.find_by_id(session[:user_id])
  end

  def new
  	@user = User.find_by_id(session[:user_id])
    @stay = Stay.find(params[:stay_id])
    @workOrder = WorkOrder.new
  end

  def create
    @user = User.find_by_id(session[:user_id])
  	@stay = Stay.find(params[:stay_id])
    @hotels = Hotel.all
    @rooms = Room.all
  	@workOrder = @user.work_orders.create workOrder_params
    @workOrder.stay_id = @stay.id
    @workOrder.hotel_id = @hotels.find_by_id(@stay.hotel_id).id
    @workOrder.room_id = @rooms.find_by_id(@stay.room_id).id

    
  	if @workOrder.save
  		redirect_to user_work_orders_path(session[:user_id])
 	  else
 		   redirect_to new_user_stay_work_order_path(session[:user_id],params[:stay_id])
 	  end
  end


  def edit
    @user = User.find_by_id(session[:user_id])
    @hotels = Hotel.all
    @rooms = Room.all
    @workOrder = WorkOrder.find_by_id(params[:id])
  end

  def update
    @stay = Stay.find_by_id(params[:id])
    @user = User.find_by_id(session[:user_id])
    @workOrder = WorkOrder.find_by_id(params[:id])
    @workOrder.update workOrder_params
    redirect_to user_work_orders_path(session[:user_id])
  end


  def show
  	@workOrder= WorkOrder.find_by_id(params[:id])
  end

  def destroy
    @workOrder = WorkOrder.find_by_id(params[:id])
    @workOrder.destroy
    redirect_to user_work_orders_path(session[:user_id]), alert: "Work Order Deleted!"

  end

  private
    def workOrder_params
      params.require(:work_order).permit(:description, :image, :user_id, :hotel_id, :room_id, :stay_id)
    end


end
