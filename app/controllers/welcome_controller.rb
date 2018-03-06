class WelcomeController < ApplicationController

  skip_before_action :require_login
  
  def index
  end

  #ADD NAME LOGIC TO WELCOME

end
