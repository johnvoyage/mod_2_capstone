module UsersHelper

  def user_match
    byebug
    unless current_user
      redirect_to root_path
    end
  end

end
