module UsersHelper

  def is_user?
    session[:user_id].to_s == params[:id]
  end

end
