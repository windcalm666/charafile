require 'rails_helper'

RSpec.describe "新規登録", type: :system do
  before do
    @user = FactoryBot.build(:user)
  end

  context "新規登録できる時" do
    it "正しい情報を入力すれば新規登録されてトップページに遷移する" do
      #トップページに遷移しようとする
      visit root_path
      #ログインしていない状態ではログインページに遷移したことの確認
      expect(current_path).to eq(new_user_session_path)
      #ログインページに新規登録ページに遷移するためのリンクがあることの確認
      expect(page).to have_content("Sign up")
      #新規登録ページに遷移する
      visit new_user_registration_path
      #各フォームに情報を入力して送信する
      fill_in 'Nickname', with: @user.nickname
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: @user.password
      fill_in 'Password confirmation', with: @user.password
      expect{find('input[name="commit"]').click}.to change { User.count }.by(1)
      #成功したらトップページに遷移したことの確認
      expect(current_path).to eq(root_path)
    end
  end

  context "新規登録できない時" do
    it "正しい情報が入力されていないと新規登録できず、新規登録ページのままになる" do
      #トップページに遷移しようとする
      visit root_path
      #ログインしていない状態ではログインページに遷移したことの確認
      expect(current_path).to eq(new_user_session_path)
      #ログインページに新規登録ページに遷移するためのリンクがあることの確認
      expect(page).to have_content("Sign up")
      #新規登録ページに遷移する
      visit new_user_registration_path
      #各フォームに情報を入力せずに送信する
      fill_in 'Nickname', with: ""
      fill_in 'Email', with: ""
      fill_in 'Password', with: ""
      fill_in 'Password confirmation', with: ""
      expect{find('input[name="commit"]').click}.to change { User.count }.by(0)
      #新規登録できずにログインページにへ戻される確認
      expect(current_path).to eq(user_registration_path)
    end
  end
end

RSpec.describe 'ログイン', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end

  context 'ログインができるとき' do
    it '保存されているユーザーの情報と合致すればログインができる' do
      visit root_path
      expect(current_path).to eq (new_user_session_path)
      fill_in "Email", with: @user.email
      fill_in "Password", with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
    end
  end
  context 'ログインができないとき' do
    it '保存されているユーザーの情報と合致しないとログインができない' do
      visit root_path
      expect(current_path).to eq(new_user_session_path)
      fill_in "Email", with: ""
      fill_in "Password", with: ""
      find('input[name="commit"]').click
      expect(current_path).to eq(new_user_session_path)
    end
  end
end