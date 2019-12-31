class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(params.require(:user).permit(:username, :password))
    if user.valid?
      user.save
      redirect_to users_path
      session[:user_id] = user.id
    end
  end

  def index
    @users = User.all
  end

  def show
    if @current_user = User.find_by(id: session[:user_id])
      @user = User.find_by(id: params[:id])
      render :show
    else
      redirect_to login_path
    end
  end
end
