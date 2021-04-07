require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  context "ユーザー登録できるとき" do
    it "正しく情報が入力されていれば登録できる" do
      expect(@user).to be_valid
    end
    it "nicknameが入力されていれば登録できる" do
      @user.nickname = "test"
      expect(@user).to be_valid
    end
    it "emailが入力されていれば登録できる" do
      @user.email = "test@email.com"
      expect(@user).to be_valid
    end
    it "passwordが入力されていれば登録できる" do
      @user.password = "000000"
      @user.password_confirmation = @user.password
      expect(@user).to be_valid
    end
    it "imageがなくても登録できる" do
      @user.image = nil
      expect(@user).to be_valid
    end
  end

  context "ユーザー登録できないとき" do
    it "nicknameが入力されていないと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが入力されていないと登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it "emailに@が含まれていないと登録できない" do
      @user.email = "testemail.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end
    it "既に登録されているemailがあると登録できない" do
      @user.save
      other_user = FactoryBot.build(:user)
      other_user.email = @user.email
      other_user.valid?
      expect(other_user.errors.full_messages).to include("Email has already been taken")
    end
    it "passwordが入力されていないと登録できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "passwordが5文字以下だと登録できない" do
      @user.password = "12345"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    it "password_confiramationが入力されていないと登録できない" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    
  end
end
