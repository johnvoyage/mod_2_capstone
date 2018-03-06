class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]

  def index
  end

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

end
