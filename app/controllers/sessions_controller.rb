class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # success
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      user.last_login_date = Time.now
      user.save
      redirect_back_or user
    else
      # failure
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
