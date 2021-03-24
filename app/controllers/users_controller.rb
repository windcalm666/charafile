class UsersController < ApplicationController
  def index
    @cthulhus = Cthulhu.where(user_id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
    @cthulhus = Cthulhu.where(user_id: @user.id)
    if @user.id == current_user.id
      redirect_to root_path
    end
  end

  def search
    @users = User.search(params[:keyword])
  end

  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to root_path
  end

  def follows
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email, :image)
  end
end