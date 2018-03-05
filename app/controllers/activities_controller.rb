class ActivitiesController < ApplicationController

  before_action :set_activity, only: [:show, :update, :edit, :destroy]

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)
    if @activity.save
      redirect_to @activity
    else
      render :new
    end
  end

  def show
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
    params.require(:activity).permit(:name, :commitment)
  end
  
end
