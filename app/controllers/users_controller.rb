class UsersController < ApplicationController
  before_action :move_to_index
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @shops = user.shops.order("created_at DESC")
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
