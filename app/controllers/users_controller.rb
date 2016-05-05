class UsersController < ApplicationController
  def index
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
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :picture_url, :bio)
  end

end
