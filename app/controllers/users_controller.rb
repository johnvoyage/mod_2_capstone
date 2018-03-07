class UsersController < ApplicationController

  before_action :user_match
  skip_before_action :user_match, only: [:new, :create]
  skip_before_action :require_login, only: [:new, :create]




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
    # byebug
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :city, :state, :password, :password_confirmation, :admin)
  end

end
