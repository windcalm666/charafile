class UsersController < ApplicationController
  def index
    @cthulhus = Cthulhu.where(user_id: current_user.id)
  end
end
