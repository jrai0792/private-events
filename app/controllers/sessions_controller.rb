class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user
      session[:user_id] = user.id
      flash[:info] ="Hello #{user.name}"
      redirect_to root_path
      else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:info] ="Logged out successfully"
    redirect_to login_path
  end
  
end