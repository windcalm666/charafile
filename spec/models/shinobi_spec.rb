require 'rails_helper'

RSpec.describe Shinobi, type: :model do
  before do
    @shinobi = FactoryBot.build(:shinobi)
  end

  context "キャラクター保存できる時" do
    it "正しく情報が入力されていれば保存できる" do
      expect(@shinobi).to be_valid
    end
    it "nameが入力されていれば保存できる" do
      @shinobi.name = "ああああ"
      expect(@shinobi).to be_valid
    end
    it "school_idが0以外なら保存できる" do
      @shinobi.school_id = 4
      expect(@shinobi).to be_valid
    end
    it "imageがなくても保存できる" do
      @shinobi.image =nil
      expect(@shinobi).to be_valid
    end
    it "パーソナルデータ以外空欄でも保存できる" do
      @shinobi.skill_1 = "" 
      @shinobi.skill_2 = "" 
      @shinobi.skill_3 = "" 
      @shinobi.skill_4 = ""
      @shinobi.skill_5 = ""
      @shinobi.skill_6 = ""
      @shinobi.skill_7 = ""
      @shinobi.arts_name_1 = ""
      @shinobi.arts_name_2 = ""
      @shinobi.arts_name_3 = ""
      @shinobi.arts_name_4 = ""
      @shinobi.arts_name_5 = ""
      @shinobi.arts_name_6 = ""
      @shinobi.arts_name_7 = ""
      @shinobi.arts_type_1 = ""
      @shinobi.arts_type_2 = ""
      @shinobi.arts_type_3 = ""
      @shinobi.arts_type_4 = ""
      @shinobi.arts_type_5 = ""
      @shinobi.arts_type_6 = ""
      @shinobi.arts_type_7 = ""
      @shinobi.arts_skill_1 = ""
      @shinobi.arts_skill_2 = ""
      @shinobi.arts_skill_3 = ""
      @shinobi.arts_skill_4 = ""
      @shinobi.arts_skill_5 = ""
      @shinobi.arts_skill_6 = ""
      @shinobi.arts_skill_7 = ""
      @shinobi.arts_range_1 = ""
      @shinobi.arts_range_2 = ""
      @shinobi.arts_range_3 = ""
      @shinobi.arts_range_4 = ""
      @shinobi.arts_range_5 = ""
      @shinobi.arts_range_6 = ""
      @shinobi.arts_range_7 = ""
      @shinobi.arts_cost_1 = ""
      @shinobi.arts_cost_2 = ""
      @shinobi.arts_cost_3 = ""
      @shinobi.arts_cost_4 = ""
      @shinobi.arts_cost_5 = ""
      @shinobi.arts_cost_6 = ""
      @shinobi.arts_cost_7 = ""
      @shinobi.arts_effect_1 = ""
      @shinobi.arts_effect_2 = ""
      @shinobi.arts_effect_3 = ""
      @shinobi.arts_effect_4 = ""
      @shinobi.arts_effect_5 = ""
      @shinobi.arts_effect_6 = ""
      @shinobi.arts_effect_7 = ""
      @shinobi.background_1 = ""
      @shinobi.background_2 = ""
      @shinobi.background_3 = ""
      @shinobi.background_4 = ""
      @shinobi.background_5 = ""
      @shinobi.background_6 = ""
      @shinobi.background_7 = ""
      @shinobi.background_8 = ""
      @shinobi.background_9 = ""
      @shinobi.background_10 = ""
      @shinobi.background_features_1 = ""
      @shinobi.background_features_2 = ""
      @shinobi.background_features_3 = ""
      @shinobi.background_features_4 = ""
      @shinobi.background_features_5 = ""
      @shinobi.background_features_6 = ""
      @shinobi.background_features_7 = ""
      @shinobi.background_features_8 = ""
      @shinobi.background_features_9 = ""
      @shinobi.background_features_10 = ""
      @shinobi.backgronud_point_1 = ""
      @shinobi.backgronud_point_2 = ""
      @shinobi.backgronud_point_3 = ""
      @shinobi.backgronud_point_4 = ""
      @shinobi.backgronud_point_5 = ""
      @shinobi.backgronud_point_6 = ""
      @shinobi.backgronud_point_7 = ""
      @shinobi.backgronud_point_8 = ""
      @shinobi.backgronud_point_9 = ""
      @shinobi.backgronud_point_10 = ""
      @shinobi.background_effect_1 = ""
      @shinobi.background_effect_2 = ""
      @shinobi.background_effect_3 = ""
      @shinobi.background_effect_4 = ""
      @shinobi.background_effect_5 = ""
      @shinobi.background_effect_6 = ""
      @shinobi.background_effect_7 = ""
      @shinobi.background_effect_8 = ""
      @shinobi.background_effect_9 = ""
      @shinobi.background_effect_10 = ""
      @shinobi.mystery_name_1 = ""
      @shinobi.mystery_name_2 = ""
      @shinobi.mystery_skill_1 = ""
      @shinobi.mystery_skill_2 = ""
      @shinobi.mystery_effect_1 = ""
      @shinobi.mystery_effect_2 = ""
      @shinobi.mystery_directing_1 = ""
      @shinobi.mystery_directing_2 = ""
      @shinobi.item_name_1 = ""
      @shinobi.item_name_2 = ""
      @shinobi.item_name_3 = ""
      @shinobi.item_name_4 = ""
      @shinobi.item_name_5 = ""
      @shinobi.item_number_1 = ""
      @shinobi.item_number_2 = ""
      @shinobi.item_number_3 = ""
      @shinobi.item_number_4 = ""
      @shinobi.item_number_5 = ""
      @shinobi.item_effect_1 = ""
      @shinobi.item_effect_2 = ""
      @shinobi.item_effect_3 = ""
      @shinobi.item_effect_4 = ""
      @shinobi.item_effect_5 = ""
      expect(@shinobi).to be_valid
    end
  end
  context "キャラクター保存できない時" do
    it "nameが入力されていないと保存できない" do
      @shinobi.name = ""
      @shinobi.valid?
      expect(@shinobi.errors.full_messages).to include("Name can't be blank")
    end
    it "school_idが0だと保存できない" do
      @shinobi.school_id = 0
      @shinobi.valid?
      expect(@shinobi.errors.full_messages).to include("School Select")
    end
  end
end
