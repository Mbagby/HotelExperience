class WorkOrdersController < ApplicationController

  def index
  	@workOrders = WorkOrder.all.order('created_at')
    @stay = Stay.find_by_id(params[:stay_id])
    @user = User.find_by_id(session[:user_id])
  end

  def new
  	@user = User.find_by_id([:user_id])
  	@hotel = Hotel.find_by_id([:hotel_id])
  	@room = Room.find_by_id([:room_id])
  end

  def create
  	@user = User.find_by_id([:user_id])
  	@stay = Stay.find_by_id([:stay_id])
  	@workOrder = @user.workOrder.create workOrder_params
  	if @workOrder_params
  		redirect_to user_work_orders_path(session[:user_id])
 	else
 		redirect_to new_user_work_order_path
 	end
  end


  def edit
  end

  def show
  	@workOrder= WorkOrder.find_by_id(params[:id])
  end


  private
    def workOrder_params
      params.require(:workOrder).permit(:description, :image_url, :user_id, :hotel_id, :room_id)
    end


end
