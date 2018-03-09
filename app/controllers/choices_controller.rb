class ChoicesController < ApplicationController

  def destroy
    @choice = Choice.find(params[:id])
    @user = User.find((@choice).user_id)
    @choice.delete
    redirect_to user_path(@user)
  end



end
