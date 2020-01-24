class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]  
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,   only: :destroy
  before_action :give_badge,   only: :show
  
  def index
    #@users = User.all
    @users = User.paginate(page: params[:page])
  end
  
  def new
    @user = User.new
  end
  
  def show
    # debugger
  end
  
  def create
    @user = User.new(user_params)
    @user.last_login_date = Time.mktime(1970, 1, 1, 0, 0, 0)
    if @user.save
      # success
      log_in @user
      flash[:success] = "Welcome to the Attendance!"
      redirect_to @user
    else
      # failure
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def edit_password
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Success
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  private

  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation,
                                 :description,
                                 :last_login_date)
  end
  
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
  
  def admin_user
    redirect_to root_url unless current_user.admin?
  end

  def give_badge
    @user = User.find(params[:id])
    @badges = Badge.where(need_point: 0..@user.points_total)
    @badges.each do |give_badge|
      unless @user.badges.include?(give_badge)
        UserBadge.create(user_id: @user.id, badge_id: give_badge.id)
      end
    end
  end

end
