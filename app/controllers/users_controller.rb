class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :users
    else
      flash.now[:alert] = "User not saved."
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user: @user)
  end

  def edit
    @user= User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to :user,   notice: "User Updated."
    else
      flash.now[:alert] = "Update not saved."
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash.now[:alert] = "User Destroyed"
    redirect_to :users
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :picture_url, :bio)
  end

end
