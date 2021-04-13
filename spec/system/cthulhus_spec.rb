require 'rails_helper'

RSpec.describe "Cthulhus", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @cthulhu = FactoryBot.build(:cthulhu)
  end

  context "キャラクター保存できる時" do
    it "正しく入力されていれば保存でき、トップページに戻る" do
      sign_in(@user)
      find("#system-select").find("option[value='cthulhu']").select_option
      expect(page).to have_content("新規キャラクター作成")
      visit new_cthulhu_path
      fill_in 'cthulhu_name', with: @cthulhu.name
      fill_in 'cthulhu_job', with: @cthulhu.job
      fill_in 'cthulhu_age', with: @cthulhu.age
      fill_in 'cthulhu_sex', with: @cthulhu.sex
      fill_in 'cthulhu_items', with: @cthulhu.items
      fill_in 'cthulhu_origin', with: @cthulhu.origin
      fill_in 'str', with: @cthulhu.str
      fill_in 'con', with: @cthulhu.con
      fill_in 'pow', with: @cthulhu.pow
      fill_in 'dex', with: @cthulhu.dex
      fill_in 'app', with: @cthulhu.app
      fill_in 'siz', with: @cthulhu.siz
      fill_in 'edu', with: @cthulhu.edu
      fill_in 'int', with: @cthulhu.int
      fill_in 'idea', with: @cthulhu.idea
      fill_in 'luck', with: @cthulhu.luck
      fill_in 'knowledge', with: @cthulhu.knowledge
      fill_in 'san', with: @cthulhu.san
      fill_in 'life-points', with: @cthulhu.life_points
      fill_in 'magick-points', with: @cthulhu.magick_points
      fill_in 'damage-bonus', with: @cthulhu.damage_bonus
      expect{find("input[name='commit']").click}.to change{ Cthulhu.count }.by(1)
      expect(current_path).to eq(root_path)
      expect(page).to have_content(@cthulhu.name)
    end
  end

  context "キャラクター保存できない時" do
    it "ステータス情報が入力されていないと保存できず、作成ページのまま" do
      sign_in(@user)
      find("#system-select").find("option[value='cthulhu']").select_option
      expect(page).to have_content("新規キャラクター作成")
      visit new_cthulhu_path
      fill_in 'cthulhu_name', with: ""
      fill_in 'cthulhu_job', with: ""
      fill_in 'cthulhu_age', with:""
      fill_in 'cthulhu_sex', with: ""
      fill_in 'cthulhu_items', with: ""
      fill_in 'cthulhu_origin', with: ""
      fill_in 'str', with: ""
      fill_in 'con', with: ""
      fill_in 'pow', with: ""
      fill_in 'dex', with: ""
      fill_in 'app', with: ""
      fill_in 'siz', with: ""
      fill_in 'edu', with: ""
      fill_in 'int', with: ""
      fill_in 'idea', with: ""
      fill_in 'luck', with: ""
      fill_in 'knowledge', with: ""
      fill_in 'san', with: ""
      fill_in 'life-points', with: ""
      fill_in 'magick-points', with: ""
      fill_in 'damage-bonus', with: ""
      expect{find("input[name='commit']").click}.to change{ Cthulhu.count }.by(0)
      expect(current_path).to eq(cthulhus_path)
    end
  end
end
