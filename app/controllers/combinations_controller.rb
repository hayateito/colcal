class CombinationsController < ApplicationController
  def show
    @combination = Combination.find(params[:id])
    # @calevents = Calevent.all
    # gon.combination_id = @combination.id
  end
  def update
    combination = Combination.find(params[:id])
    if combination.id == current_user.combination.id
      combination.update(avatar_params)
    end
    redirect_to controller: :users, action: :show, :id => current_user.id
  end
  private
  def avatar_params
    params.require(:combination).permit(:avatar)
  end
end