class CthulhusController < ApplicationController
  def new
    @cthulhu_skill = CthulhuSkills.new
  end

  def create
     binding.pry
    @cthulhu_skill = CthulhuSkills.new(cthulhu_params)
    if @cthulhu_skill.valid?
      @cthulhu_skill.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def cthulhu_params
    params.require(:cthulhu_skills).permit(:name, :job, :age, :sex, :str, :con, :dex, :app, :edu, :int, :siz, :pow,
    :san, :luck, :idea, :knowledge, :magick_points, :damage_bonus, :life_points, :origin, :items, 
    :find_hidden, :hearing, :first_aid, :therapy, :climbing, :leap, :throwing, :avoidance, :conceal, :hide, :stealth,
    :disguise, :traching, :navigate, :driving, :control_1, :control_1_value, :control_2, :control_2_value, :control_3, :control_3_value,
    :horse_ridding, :heavy_machine, :machine_repair, :electrical_engineering, :computer, :library, :photography, :picking, :swimming,
    :medicine, :chemistry, :pharmacy, :physics, :astronomy, :archeology, :history, :anthropology, :geology, :natural_history,
    :accounting, :law, :occult, :say, :persuade, :credit, :psychology, :price_cut, :native_language, :native_language_value,
    :language_1, :language_1_value, :language_2, :language_2_value, :art, :art_value, :work, :work_value, :biology,
    :punch, :kick, :headbutt, :assembled, :martial_arts, :knife, :japanese_sword, :cane, :handgun, :mythology, :image).merge(user_id: current_user.id)
  end

end
