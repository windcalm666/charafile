class CthulhusController < ApplicationController
  def new
    @cthulhu = Cthulhu.new
  end

  def create
    Cthulhu.create(cthulhu_params)
    redirect_to root_path
  end

  private
  def cthulhu_params
    params.require(:cthulhu).permit(:name, :job, :age, :sex, :str, :con, :dex, :app, :edu, :int, :siz, :pow,
    :san, :luck, :idea, :knowledge, :magick_points, :damage_bonus, :life_points, :origin, :items).merge(user_id: current_user.id)
  end

  def skill_params
  end
end
