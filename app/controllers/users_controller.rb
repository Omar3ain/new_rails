class UsersController < ApplicationController
  def index
    @users = User.all()
    render action: 'index'
  end
  def new
    @user = User.new()
  end
  def show
    @user = User.find(params[:id])
  end
  def create
    @user = User.new({"name": params[:user][:name],"DBO": params[:user][:DBO],"email":params[:user][:email],"phone_number": params[:user][:phone_number]})
    if @user.save
      redirect_to users_path
    else
      render :new , status: 422
    end

  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update({"name": params[:user][:name],"DBO": params[:user][:DBO],"email":params[:user][:email],"phone_number": params[:user][:phone_number]})
      redirect_to users_path
    else
      render :edit
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to users_path
  end
end
