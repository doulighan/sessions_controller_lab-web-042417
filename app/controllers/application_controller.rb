class ApplicationController < ActionController::Base
  helper_method :current_user
  protect_from_forgery with: :exception



  def current_user 
    session[:user]
  end

  def current_user=(u)
    session[:user] = u
  end




end