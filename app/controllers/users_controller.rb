class UsersController < ApplicationController
  before_action :find_user, only:[:edit, :update]
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if(@user.save)
      session[:user_id]= @user.id
      redirect_to root_path notice: "Thank you for signing up!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
