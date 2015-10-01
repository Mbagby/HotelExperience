class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
  	before_action :ensure_correct_user, only: [:show,:edit, :update, :destroy]
  
  def index
  end

  def show
    @user = User.find_by_id(session[:user_id])
    @stays = @user.stays.order('checkin')
    @hotels = Hotel.all
  end

  def edit
  end

  def update
    @user = User.find_by_id(session[:user_id])
    @user.image = params[:user][:image]
    @user.update_attribute(:image, @user.image)
    redirect_to users_path(@user)

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
