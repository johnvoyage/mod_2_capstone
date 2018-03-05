class InterestsController < ApplicationController

  before_action :set_activity, only: [:show, :update, :edit, :destroy]

  def index
    @interests = Interest.all
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.create(interest_params)
    if @interest.save
      redirect_to @interest
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @interest.update(interest_params)
      redirect_to @interest
    else
      render :edit
    end
  end

  def destroy
    @interest.destroy
    redirect_to interests_path
  end

  private

  def set_activity
    @interest = Interest.find(params[:id])
  end

  def interest_params
    params.require(:interest).permit(:name)
  end

end
