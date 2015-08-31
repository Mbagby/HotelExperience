class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
  	before_action :ensure_correct_user, only: [:show,:edit, :update, :destroy]
  
  def index
  	@user = User.find_by_id(params[:user_id])
  	@hotels = hotel.all
  	@rooms = room.all
  	@workOrders = work_order.all
  end

  def show
  end

  def edit
  end

  def update
    @user.update user_params
    if @user.save
      redirect_to user_path, flash: {success: "#{@user.username} updated!"}
    else
      render :edit
    end
  end

  def destroy
    @user.destroy && session[:user_id] = nil
    redirect_to root_path, flash: {success: "#{@user.username} deleted"}
  end

  def set_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :first_name,
      :last_name,
      :image
    )
  end

  def ensure_correct_user
    # compare some params vs something in the session/current_user
    unless params[:id].to_i == session[:user_id]
      redirect_to all_teams_path, alert: "Not Authorized"
    end
  end

end
