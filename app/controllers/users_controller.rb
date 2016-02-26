class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @calevents = Calevent.find(current_user.combination.id)
  end
  def edit
      @avatar = current_user.combination.avatar
  end
end
