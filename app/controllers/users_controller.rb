class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end
  
  def delete
    @user = User.find(params[:id]).destroy
  end
  
  def new
    @user = User.new
    @user.build_listing
  end
  
  def create
    @user = User.new(params[:listing])
    if @user.save
      redirect_to users_path
    else
      render "new"
    end
  end

end
