class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show 
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new({name:params[:user][:name],email:params[:user][:email],
    DOB:params[:user][:DOB],phone:params[:user][:phone]})
    if @user.save
      redirect_to users_url
    else
      render :new , status:422
    end 
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_url ,notice: "posts has been destroyed." }
    end
  end
end
