class UsersController < ApplicationController

  before_action :user_match
  skip_before_action :user_match, only: [:new, :create, :show]
  skip_before_action :require_login, only: [:new, :create]

  include UsersHelper

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render :new
    end
  end

  def destroy
    @user.delete
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :city, :state, :password, :password_confirmation, :admin)
  end

end
