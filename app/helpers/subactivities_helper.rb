module SubactivitiesHelper

  require 'rest-client'
  require 'json'

  def create_choice(subactivity)
    # byebug
    Choice.find_or_create_by(user_id: session[:user_id], subactivity_id: subactivity.id)
  end

end
