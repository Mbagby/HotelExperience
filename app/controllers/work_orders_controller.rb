class WorkOrdersController < ApplicationController

  def index
  	@workOrders = WorkOrder.all.order('created_at')
    @stay = Stay.find_by_id(params[:stay_id])
    @user = User.find_by_id(session[:user_id])
  end

  def new
  	@user = User.find_by_id(session[:user_id])
    @stay = Stay.find(params[:stay_id])
  	@hotels = Hotel.all
    @rooms = Room.all
    @workOrder = WorkOrder.new
  end

  def create
    @user = User.find_by_id(session[:user_id])
  	@stay = Stay.find(params[:stay_id])
  	@workOrder = @user.work_orders.create workOrder_params
  	if @workOrder_params
  		redirect_to user_work_orders_path(session[:user_id])
 	  else
 		   redirect_to new_user_stay_work_order_path(session[:user_id],params[:stay_id])
 	  end
  end


  def edit
  end

  def show
  	@workOrder= WorkOrder.find_by_id(params[:id])
  end


  private
    def workOrder_params
      params.require(:work_order).permit(:description, :image, :user_id, :hotel_id, :room_id, :stay_id)
    end


end
