class UsersController < ApplicationController
  def index
    @cthulhus = Cthulhu.where(user_id: current_user.id)
  end

  def follows
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end
end
