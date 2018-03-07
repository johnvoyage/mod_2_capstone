class ActivitiesController < ApplicationController

  before_action :set_activity, only: [:show, :update, :edit, :destroy]
  before_action :require_login

  include ActivitiesHelper

  def index
    @activities = Activity.all
  end

  def new
    # byebug
    if params[:name]
      @activity = Activity.new(name: params[:name], interest_id: params[:interest_id])
    else
      @activity = Activity.new(interest_id: params[:interest_id])
    end
  end

  def create
    exists = Activity.find_by(name: activity_params[:name])
    if exists
      # byebug
      redirect_to activity_path(exists.id)
    else
      # byebug
      @activity = Activity.create(activity_params)
      if @activity.save
        redirect_to @activity
      else
        redirect_to new_activity_path(activity_params)
      end
    end
  end

  def show
    @subactivity = Subactivity.new
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to @activity
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :interest_id)
  end

end
