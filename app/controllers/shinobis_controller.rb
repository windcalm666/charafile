class ShinobisController < ApplicationController
  before_action :find_shinobi, only: [:show, :edit, :update, :destroy]

  def new
    @shinobi = Shinobi.new
  end

  def create
    @shinobi = Shinobi.new(shinobi_params)
    if @shinobi.valid?
      @shinobi.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
  
  def edit
  end

  def update
    if @shinobi.valid?
      @shinobi.update(shinobi_params)
      redirect_to shinobi_path(@shinobi.id)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def find_shinobi
    @shinobi = Shinobi.find(params[:id])
  end

  def shinobi_params
    params.require(:shinobi).permit(:name, :age, :sex, :school_id, :under_school, :school_style, :job, :belief, :origin, :shinobi_class, :enemy,
    :achievement, :skill_space_0, :skill_space_1, :skill_space_2, :skill_space_3, :skill_space_4, :skill_space_5, :skill_space_bottom, :skill_1, :skill_2,
    :skill_3, :skill_4, :skill_5, :skill_6, :skill_7,:arts_secret_1, :arts_secret_2, :arts_secret_3, :arts_secret_4, :arts_secret_5,
    :arts_secret_6, :arts_secret_7, :arts_name_1, :arts_name_2, :arts_name_3, :arts_name_4, :arts_name_5, :arts_name_6, :arts_name_7,
    :arts_type_1, :arts_type_2, :arts_type_3, :arts_type_4, :arts_type_5, :arts_type_6, :arts_type_7, :arts_skill_1, :arts_skill_2, :arts_skill_3,
    :arts_skill_4, :arts_skill_5, :arts_skill_6, :arts_skill_7, :arts_range_1, :arts_range_2, :arts_range_3, :arts_range_4, :arts_range_5,
    :arts_range_6, :arts_range_7, :arts_cost_1, :arts_cost_2, :arts_cost_3, :arts_cost_3, :arts_cost_4, :arts_cost_5, :arts_cost_6, :arts_cost_7,
    :arts_effect_1, :arts_effect_2, :arts_effect_3, :arts_effect_4, :arts_effect_5, :arts_effect_6, :arts_effect_7, :background_1,
    :background_2, :background_3, :background_4, :background_5, :background_6, :background_7, :background_8, :background_9, :background_10,
    :background_features_1, :background_features_2, :background_features_3, :background_features_4, :background_features_5,
    :background_features_6, :background_features_7, :background_features_8, :background_features_9, :background_features_10,
    :backgronud_point_1, :backgronud_point_2, :backgronud_point_3, :backgronud_point_4, :backgronud_point_5, :backgronud_point_6,
    :backgronud_point_7, :backgronud_point_8, :backgronud_point_9, :backgronud_point_10, :background_effect_1, :background_effect_2,
    :background_effect_3, :background_effect_4, :background_effect_5, :background_effect_6, :background_effect_7, :background_effect_8,
    :background_effect_9, :background_effect_10, :mystery_name_1, :mystery_name_2, :mystery_skill_1, :mystery_skill_2, :mystery_effect_1,
    :mystery_effect_2, :mystery_directing_1, :mystery_directing_2, :item_name_1, :item_name_2, :item_name_3, :item_name_4, :item_name_5,
    :item_number_1, :item_number_2, :item_number_3, :item_number_4, :item_number_5,:item_effest_1, :item_effest_2, :item_effest_3,
    :item_effest_4, :item_effest_5, :image).merge(user_id: current_user.id)
  end
end
