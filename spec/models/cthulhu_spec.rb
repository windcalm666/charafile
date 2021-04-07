require 'rails_helper'

RSpec.describe Cthulhu, type: :model do
  before do
    @cthulhu = FactoryBot.build(:cthulhu)
  end

  context "キャラクター保存できる時" do
    it "正しく情報が入力されていれば保存できる" do
      expect(@cthulhu).to be_valid
    end
    it "originが入力されていなくても保存できる" do
      @cthulhu.origin = ""
      expect(@cthulhu).to be_valid
    end
    it "itemsが入力されていなくても保存できる" do
      @cthulhu.items = ""
      expect(@cthulhu).to be_valid
    end
    it "技能系が全て記述されていなくても保存できる" do
      @cthulhu.find_hidden = ""
      @cthulhu.hearing = ""
      @cthulhu.first_aid = ""
      @cthulhu.therapy = ""
      @cthulhu.climbing = ""
      @cthulhu.leap = ""
      @cthulhu.throwing = ""
      @cthulhu.avoidance = ""
      @cthulhu.conceal = ""
      @cthulhu.hide = ""
      @cthulhu.stealth = "" 
      @cthulhu.disguise = "" 
      @cthulhu.traching = "" 
      @cthulhu.navigate = ""
      @cthulhu.driving = ""
      @cthulhu.control_1 = ""
      @cthulhu.control_1_value = ""
      @cthulhu.control_2 = ""
      @cthulhu.control_2_value = ""
      @cthulhu.control_3 = ""
      @cthulhu.control_3_value = ""
      @cthulhu.horse_ridding = ""
      @cthulhu.heavy_machine = ""
      @cthulhu.machine_repair = ""
      @cthulhu.electrical_engineering = ""
      @cthulhu.computer = "" 
      @cthulhu.library = ""
      @cthulhu.photography = ""
      @cthulhu.picking = ""
      @cthulhu.swimming = ""
      @cthulhu.medicine = ""
      @cthulhu.chemistry = ""
      @cthulhu.pharmacy = ""
      @cthulhu.physics = ""
      @cthulhu.astronomy = ""
      @cthulhu.archeology = ""
      @cthulhu.history = ""
      @cthulhu.anthropology = ""
      @cthulhu.geology = ""
      @cthulhu.natural_history = ""
      @cthulhu.accounting = ""
      @cthulhu.law = ""
      @cthulhu.occult = ""
      @cthulhu.say = ""
      @cthulhu.persuade = ""
      @cthulhu.credit = ""
      @cthulhu.psychology = ""
      @cthulhu.price_cut = ""
      @cthulhu.native_language = ""
      @cthulhu.native_language_value = ""
      @cthulhu.language_1 = ""
      @cthulhu.language_1_value = ""
      @cthulhu.language_2 = ""
      @cthulhu.language_2_value = ""
      @cthulhu.art = ""
      @cthulhu.art_value = ""
      @cthulhu.work = ""
      @cthulhu.work_value = ""
      @cthulhu.biology = ""
      @cthulhu.punch = ""
      @cthulhu.kick = ""
      @cthulhu.headbutt = ""
      @cthulhu.assembled = ""
      @cthulhu.martial_arts = ""
      @cthulhu.knife = ""
      @cthulhu.japanese_sword = ""
      @cthulhu.cane = ""
      @cthulhu.handgun = ""
      @cthulhu.mythology = ""
      expect(@cthulhu).to be_valid
    end
    it "imageがなくても保存できる" do
      @cthulhu.image = nil
      expect(@cthulhu).to be_valid
    end
  end

  context "キャラクター保存できない時" do
    it "nameが入力されていないと保存できない" do
      @cthulhu.name = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Name can't be blank")
    end
    it "jobが入力されていないと保存できない" do
      @cthulhu.job = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Job can't be blank")
    end
    it "ageが入力されていないと保存できない" do
      @cthulhu.age = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Age can't be blank")
    end
    it "ageが半角数字以外だと保存できない" do
      @cthulhu.age = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Age is not a number")
    end
    it "sexが入力されていないと保存できない" do
      @cthulhu.sex = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Sex can't be blank")
    end
    it "strが入力されていないと保存できない" do
      @cthulhu.str = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Str can't be blank")
    end
    it "strが半角英数字以外だと保存できない" do
      @cthulhu.str = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Str is not a number")
    end
    it "conが入力されていないと保存できない" do
      @cthulhu.con = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Con can't be blank")
    end
    it "conが半角英数字以外だと保存できない" do
      @cthulhu.con = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Con is not a number")
    end
    it "powが入力されていないと保存できない" do
      @cthulhu.pow = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Pow can't be blank")
    end
    it "powが半角英数字以外だと保存できない" do
      @cthulhu.pow = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Pow is not a number")
    end
    it "dexが入力されていないと保存できない" do
      @cthulhu.dex = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Dex can't be blank")
    end
    it "dexが半角英数字以外だと保存できない" do
      @cthulhu.dex = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Dex is not a number")
    end
    it "sizが入力されていないと保存できない" do
      @cthulhu.siz = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Siz can't be blank")
    end
    it "sizが半角英数字以外だと保存できない" do
      @cthulhu.siz = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Siz is not a number")
    end
    it "eduが入力されていないと保存できない" do
      @cthulhu.edu = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Edu can't be blank")
    end
    it "eduが半角英数字以外だと保存できない" do
      @cthulhu.edu = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Edu is not a number")
    end
    it "intが入力されていないと保存できない" do
      @cthulhu.int = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Int can't be blank")
    end
    it "intが半角英数字以外だと保存できない" do
      @cthulhu.int = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Int is not a number")
    end
    it "appが入力されていないと保存できない" do
      @cthulhu.app = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("App can't be blank")
    end
    it "appが半角英数字以外だと保存できない" do
      @cthulhu.app = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("App is not a number")
    end
    it "sanが入力されていないと保存できない" do
      @cthulhu.san = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("San can't be blank")
    end
    it "sanが半角英数字意外だと保存できない" do
      @cthulhu.san = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("San is not a number")
    end
    it "luckが入力されていないと保存できない" do
      @cthulhu.luck = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Luck can't be blank")
    end
    it "luckが半角英数字以外だと保存できない" do
      @cthulhu.luck = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Luck is not a number")
    end
    it "ideaが入力されていないと保存できない" do
      @cthulhu.idea = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Idea can't be blank")
    end
    it "ideaが半角英数字以外だと保存できない" do
      @cthulhu.idea = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Idea is not a number")
    end
    it "knowledgeが入力されていないと保存できない" do
      @cthulhu.knowledge = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Knowledge can't be blank")
    end
    it "knowledgeが半角英数字以外だと保存できない" do
      @cthulhu.knowledge = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Knowledge is not a number")
    end
    it "magick_pointsが入力されていないと保存できない" do
      @cthulhu.magick_points = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Magick points can't be blank")
    end
    it "magick_pointsが半角英数字以外だと保存できない" do
      @cthulhu.magick_points = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Magick points is not a number")
    end
    it "damage_bonusが入力されていないと保存できない" do
      @cthulhu.damage_bonus = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Damage bonus can't be blank")
    end
    it "life_pointsが入力されていないと保存できない" do
      @cthulhu.life_points = ""
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Life points can't be blank")
    end
    it "life_pointsが半角英数字意外だと保存できない" do
      @cthulhu.life_points = "２０ABC"
      @cthulhu.valid?
      expect(@cthulhu.errors.full_messages).to include("Life points is not a number")
    end
  end
end
