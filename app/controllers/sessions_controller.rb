class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user
      session[:user_id] = user.id
      flash[:notice] ="Hello #{user.name}"
      redirect_to events_path
    else
      render signup_path
    end
      
    
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] ="Logged out successfully"
    redirect_to login_path
  end
  
end
