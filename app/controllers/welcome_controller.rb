class WelcomeController < ApplicationController

  skip_before_action :require_login

  include WelcomesHelper

  def index
  end

  #ADD NAME LOGIC TO WELCOME


end
