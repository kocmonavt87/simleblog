class ApplicationController < ActionController::Base
  def landing
  end

  def about_us
  end

  def help
  end

  def rules
  end

  def comments
  end

  def user_information
  end

 private

 def authorize
  redirect_to login_path if !logged_in? 
 end

def logged_in?
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end

helper_method :logged_in?
end
