class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @calevents = current_user.combination.calevents
  end
  def edit
      @avatar = current_user.combination.avatar
  end
end
