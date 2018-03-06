class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  include SessionsHelper

  private

  def require_login
    unless current_user
      redirect_to root_path
    end
  end


  def user_match
    # byebug
    unless params[:id].to_i == session[:user_id]
      # byebug
      redirect_to root_path
    end
  end

end
