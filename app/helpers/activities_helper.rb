module ActivitiesHelper

  def is_admin?
    User.find(session[:user_id]).admin
  end

end
