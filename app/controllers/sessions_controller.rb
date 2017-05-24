class SessionsController < ApplicationController
  
  def index

  end

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to sessions_new_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_url
  end

end
