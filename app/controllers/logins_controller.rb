class LoginsController < ApplicationController
  
  def create
    user = User.find_by_email(params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to listings_path
    else
      raise "Invalid login."
    end
  end
  
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
  helper_method :current_user
  
  def destroy
    session[:user_id] = nil fav.png
    redirect_to listings_path
  end
  
end