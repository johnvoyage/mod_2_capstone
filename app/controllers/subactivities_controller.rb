class SubactivitiesController < ApplicationController

  before_action :set_subactivity, only: [:show, :update, :edit, :destroy]
  before_action :require_login

  include SubactivitiesHelper

  def index
    @activities = Subactivity.all
  end

  def new
    if params[:name]
      @subactivity = Subactivity.new(name: params[:name], interest_id: params[:interest_id])
    else
      @subactivity = Subactivity.new(interest_id: params[:interest_id])
    end
  end

  def create
    exists = Subactivity.find_by(name: subactivity_params[:name])
    if exists
      # byebug
      create_choice(exists)
      redirect_to subactivity_path(exists.id)
    else
      # byebug
      @subactivity = Subactivity.create(subactivity_params)
      if @subactivity.save
        create_choice(@subactivity)
        redirect_to @subactivity
      else
        redirect_to new_subactivity_path(subactivity_params)
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @subactivity.update(subactivity_params)
      redirect_to @subactivity
    else
      render :edit
    end
  end

  def destroy
    @subactivity.destroy
    redirect_to activities_path
  end

  private

  def set_subactivity
    @subactivity = Subactivity.find(params[:id])
  end

  def subactivity_params
    params.require(:subactivity).permit(:name, :description, :commitment, :activity_id)
  end

end
