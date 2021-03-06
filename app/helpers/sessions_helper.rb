module SessionsHelper
  
  def log_in(user)
    # session.clear
    session[:user_id] = user.id
    if user.last_login_date.to_date != Date.today
      user.add_points(1, "Awarded for some awesome action", "Login")
      user.total_point += 1
      user.login_count += 1
    end
    user.last_login_date = Time.now
    user.save
  end
  
  def remember(user)
    user.remember  # Save DB 
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
  
  def current_user
    # @current_user ||= User.find_by(id: session[:user_id])
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end
  
  def current_user?(user)
    user == current_user
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  def store_location
    session[:forwarding_url] = request.url if request.get?
  end  
end
