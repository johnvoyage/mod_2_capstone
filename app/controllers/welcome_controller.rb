class WelcomeController < ApplicationController

  skip_before_action :require_login

  include WelcomesHelper

  def index
  end

  #ADD NAME LOGIC TO WELCOME

  def name_of_interest(num)
    Interest.all[num-1].name
  end

end
