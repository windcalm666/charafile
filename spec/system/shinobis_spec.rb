require 'rails_helper'

RSpec.describe "Shinobis", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @shinobi = FactoryBot.build(:shinobi)
  end
  context "キャラクター保存できる時" do
    it "名前とセレクトボックスを入力していれば保存でき、トップページに遷移する" do
      sign_in(@user)
      find("#system-select").find("option[value='shinobigami']").select_option
      expect(page).to have_content("新規キャラクター作成")
      visit new_shinobi_path
      fill_in "shinobi_name", with: @shinobi.name
      find("#shinobi-school-select").find("option[value='3']").select_option
      expect{find("input[name='commit']").click}.to change{ Shinobi.count }.by(1)
      expect(current_path).to eq(root_path)
      expect(page).to have_content(@shinobi.name)
    end
  end

  context "キャラクター保存できない時" do
    it "名前とセレクトボックスが正しくないと新規作成ページのまま" do
      sign_in(@user)
      find("#system-select").find("option[value='shinobigami']").select_option
      expect(page).to have_content("新規キャラクター作成")
      visit new_shinobi_path
      fill_in "shinobi_name", with: ""
      find("#shinobi-school-select").find("option[value='0']").select_option
      expect{find("input[name='commit']").click}.to change{ Shinobi.count }.by(0)
      expect(current_path).to eq(shinobis_path)
    end
  end


end
