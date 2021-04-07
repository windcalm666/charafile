class CthulhusController < ApplicationController
  before_action :find_cthulhu, only: [:edit, :update, :show, :destroy]
  before_action :kick_other_user, only: [:edit, :update, :destroy]

  def new
    @cthulhu = Cthulhu.new
  end

  def create
    @cthulhu = Cthulhu.new(cthulhu_params)
    if @cthulhu.valid?
      @cthulhu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cthulhu.valid?
      @cthulhu.update(cthulhu_params)
      redirect_to cthulhu_path(@cthulhu.id)
    else
      renader :edit
    end
  end


  def show
  end

  def destroy
    @cthulhu.destroy
    redirect_to root_path
  end

  private
  def cthulhu_params
    params.require(:cthulhu).permit(:name, :job, :age, :sex, :str, :con, :dex, :app, :edu, :int, :siz, :pow,
    :san, :luck, :idea, :knowledge, :magick_points, :damage_bonus, :life_points, :origin, :items, 
    :find_hidden, :hearing, :first_aid, :therapy, :climbing, :leap, :throwing, :avoidance, :conceal, :hide, :stealth,
    :disguise, :traching, :navigate, :driving, :control_1, :control_1_value, :control_2, :control_2_value, :control_3, :control_3_value,
    :horse_ridding, :heavy_machine, :machine_repair, :electrical_engineering, :computer, :library, :photography, :picking, :swimming,
    :medicine, :chemistry, :pharmacy, :physics, :astronomy, :archeology, :history, :anthropology, :geology, :natural_history,
    :accounting, :law, :occult, :say, :persuade, :credit, :psychology, :price_cut, :native_language, :native_language_value,
    :language_1, :language_1_value, :language_2, :language_2_value, :art, :art_value, :work, :work_value, :biology,
    :punch, :kick, :headbutt, :assembled, :martial_arts, :knife, :japanese_sword, :cane, :handgun, :mythology, :image).merge(user_id: current_user.id)
  end

  def find_cthulhu
    @cthulhu = Cthulhu.find(params[:id])
  end

  def kick_other_user
    if @cthulhu.user.id != current_user.id
      redirect_to root_path
    end
  end

end
