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
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user= User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to :user
    else
      flash.now[:alert] = "Update not saved."
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :picture_url, :bio)
  end

end
