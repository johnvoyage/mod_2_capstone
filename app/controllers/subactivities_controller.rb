class SubactivitiesController < ApplicationController

  # before_action :set_subactivity, only: [:show, :update, :edit, :destroy]
  before_action :require_login

end
