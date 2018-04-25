class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user, :is_admin

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_admin
    logged_in? && current_user.admin?
  end

  def require_admin
    if !is_admin
      flash[:failure] = "You do not have permission to perform that action"
      redirect_to root_path
    end
  end

end
