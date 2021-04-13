# アプリケーション名
## キャラファイル

# アプリケーション概要
アナログゲームであるTRPGのキャラクターデータを本来紙で管理しているものを、アカウントを作成し、紐づけることで管理を楽にするためのアプリケーションです。  
また、他のユーザーをフォロー、フォロワーの関係とすることで、一緒に遊ぶ相手のキャラクターを覗くことができるようにしました。  
## 補足:TRPGとは？  
--剣と魔法の世界で冒険したい。  
--超能力者になって社会の裏で蠢く闇と戦いたい

そんな誰でも思う夢のような理想を叶えることができる電源のいらないゲームが"テーブルトークロールプレイングゲーム"、略して"TRPG(またはTTRPG)"と呼びます。  
このTRPGの最大の特徴は、自分自身が用意された物語の登場人物としてその世界を冒険できることにあります。  
### TRPGを遊ぶのに用意するもの
- ルールブック  
世界観やルールなどが記載された本。クトゥルフ神話TRPGやソードワールド2.5など、世界観やルールがそれぞれ異なっていることから、機械のように"システム"などと呼び分けたりする。  
ゲーム機で例えるとカセットにあたる。  
- 進行役  
"ゲームマスター(GM)"、"キーパー(KP)"などと呼ばれる物語の進行役。ほとんどのシステムは必要とするが、稀に進行役が不在でもプレイできるものある。  
ゲーム機で例えると制御するプログラムにあたる。  
- シナリオ  
システム毎に用意された物語。通常のゲームとは違って明確なセリフ等は厳密には決められていることが少ない。  
- プレイヤー  
進行役と違い、物語の登場人物となる人。"PL"とも呼ぶ。そのプレイヤーが持つ演じるキャラクターのことを"プレイヤーキャラクター(PC)"と呼ぶこともある。
- サイコロやカード  
登場人物がなんらかのアクションを起こした時に、サイコロやカードを使います。この結果によってそのアクションの結果を進行役が決めます。  
ほとんどはサイコロを使用するが、システムによってはトランプやオリジナルのカードなどを使用します。  
TRPGが"演劇"ではなく、"ゲーム"たらしめる醍醐味とも言える。
- 紙とペン  
地図や秘匿情報、戦闘の配置からキャラクター情報の管理、様々な場面で必要になるセット。直接テーブルを囲んでプレイする際にはほぼ必要となると言っても過言ではない。  

# URL
https://charafile.herokuapp.com/

# テスト用アカウント
- Basic認証ID名:admin
- Basic認証パスワード:2222
- ログイン用アカウント:test@email.com
- ログイン用パスワード:111111
- ユーザー検索用アカウント名1:サンプル
- ユーザー検索用アカウント名2:試験運用

# 利用方法
- 新規キャラクター作成のリンクは、その上にあるシステムを選択することで、それぞれのキャラクター作成ページへと遷移します。その先で、キャラクターごとのステータスを保存することでトップページに遷移して確認できます。
- フォロー一覧とフォロワー一覧からは、ログインしているユーザーのそれぞれフォローしている他ユーザーとフォロワーのユーザーの一覧が表示されます。

# 目指した課題解決
TRPGというアナログゲームは、元々は紙とペンとサイコロさえあれば遊べると言うものでした。  
ですが、そのゲームの性質上どうしてもキャラクターの管理をするためには紙になってしまいます。紙で管理すること自体に問題はないですが、不便だと思ってしまう場面が多々あるのです。  
例えば、ファイルなどにまとめて棚に収納したとします。  
どこにしまったか忘れてしまうと探すのも手間ですし、数が増えるとかさばってしまうため、収納に困ります。
こういった問題をこのアプリケーションによってアカウントと紐付けて管理することでスペースを取らず、ログインするだけでキャラクターの一覧を確認することができるようにしました。  
また、TRPGは複数人で遊ぶことが多いので、他の友人のアカウントをフォローすることで紙ではできないオンライン環境でのキャラクター共有をすることができるようにしました。


# 洗い出した要件
- ユーザー管理機能(Rails)
- ユーザー同士のフォロー機能(Rails)
- クトゥルフ神話TRPGのキャラクター管理機能(Rails)
- クトゥルフ神話TRPGのランダムに決定するキャラクターステータスの項目をボタン一つで決定する機能(JavaScript)
- シノビガミのキャラクター管理機能(Rails)
- 選択した内容によって対応する箇所が黒く塗りつぶされる機能(JavaScript)
- 隠れているフォームをユーザーの任意で表示させることができる機能(JavaScript)
- 詳細表示する際に秘匿と公開の状態をボタン一つで切り替えできる機能(JavaScript)

# 実装した機能についての画像やGIF及びその説明
[![Image from Gyazo](https://i.gyazo.com/5959d64632e1a389c6944888f3b47f6c.png)](https://gyazo.com/5959d64632e1a389c6944888f3b47f6c)
トップページ  
そのユーザーの所持キャラクターの一覧を表示  
サイドバーはサインイン、ログイン画面以外の全てに表示するため、これ以降は割愛いたします

[![Image from Gyazo](https://i.gyazo.com/e65fa70a638aad8164bfdbb3d23fa65f.gif)](https://gyazo.com/e65fa70a638aad8164bfdbb3d23fa65f)
一覧表示されているキャラクターを右上のセレクトボックスを選択することで、システム毎にキャラクターを表示させることができる

[![Image from Gyazo](https://i.gyazo.com/3ed56e269e6f7472d1f7bbb4bddf2478.gif)](https://gyazo.com/3ed56e269e6f7472d1f7bbb4bddf2478)
クトゥルフ神話TRPGのキャラクター作成ページ  
ランダム決定ボタンを押すことで、数値が自動で記入される機能

[![Image from Gyazo](https://i.gyazo.com/110bec3e53d58db691d578bc77b92156.gif)](https://gyazo.com/110bec3e53d58db691d578bc77b92156)
シノビガミのキャラクター作成ページ

[![Image from Gyazo](https://i.gyazo.com/14a6db1ed0566e2af9abc8ab5c815ed8.gif)](https://gyazo.com/14a6db1ed0566e2af9abc8ab5c815ed8)
セレクトボックスで選択した内容によって対応するチェックボックスにチェックが入り、行が黒く塗り潰される機能

[![Image from Gyazo](https://i.gyazo.com/54fb9f3a9135833f571f6857a8e3cc3a.gif)](https://gyazo.com/54fb9f3a9135833f571f6857a8e3cc3a)
手動でチェックを入れると塗り潰される機能と、表をクリックすると、その表の文字がフォームに入力された状態で表示される機能

[![Image from Gyazo](https://i.gyazo.com/f38e2e0148462d03916bfb4b363ed120.gif)](https://gyazo.com/f38e2e0148462d03916bfb4b363ed120)
行を追加するボタンを押すことで各フォームの隠されたフォームが表示される機能

[![Image from Gyazo](https://i.gyazo.com/ab2f02868f67ff4a924219abe9b9d368.gif)](https://gyazo.com/ab2f02868f67ff4a924219abe9b9d368)
行を削除を行うと、フォームの内容をリセットしながら非表示になる機能

[![Image from Gyazo](https://i.gyazo.com/4123b5e2cbcfdd6fd06054c8aeebfa6c.gif)](https://gyazo.com/4123b5e2cbcfdd6fd06054c8aeebfa6c)

[![Image from Gyazo](https://i.gyazo.com/c0982365565919b7f5ff90fe8b227bac.gif)](https://gyazo.com/c0982365565919b7f5ff90fe8b227bac)
詳細表示ページ  
秘匿、閲覧ボタンを押すと、表示と非表示を切り替える機能

[![Image from Gyazo](https://i.gyazo.com/3b8556ed31b80c95840b5b3cf7e962f2.gif)](https://gyazo.com/3b8556ed31b80c95840b5b3cf7e962f2)

[![Image from Gyazo](https://i.gyazo.com/d82b1dd9c60b8bd13ff9c679fed78d71.gif)](https://gyazo.com/d82b1dd9c60b8bd13ff9c679fed78d71)
ユーザー同志のフォロー機能  
フォロー一覧から対象ユーザーの詳細表示ができ、そのまた逆もできる機能の実装

# 工夫した点
とにかくユーザーが利用する際に、どうしたら使いやすくなるかを考えながら機能の実装をしたことです。  

制作開始当初はRubyとRailsのみで管理できるようにしていましたが、ユーザーが情報を入力する項目が多いのにも関わらず、わざわざ毎回手打ちしなければならないと考え、これだけでは便利になるような機能とは思えなかったことから追加することにしました。

こういった後から機能の追加をすることはあまり好ましくはないとは思いますが、これをきっかけにユーザーにとって便利なことは何かを考えることができるようになりました。

# 大変だった点
全体で機能を実装する際に、カリキュラム外の知識を多用したことです。

モデルの自己結合や、クリックした位置の座標情報の取得、ランダムな数値の算出など、どれも使用したことのない知識だったために理解するまでに大変だった思いをしました。  
その結果当初の予定とは違う実装結果になってしまったりもしています。  

これからの目標としては、まず理解することができなかった部分の学習をし、そこを克服することが当面の目標になると思います。

# 実装予定の機能
- PC、タブレット、スマートフォンによって、レイアウトの変更。  
正確にはビューファイルの変更をする機能の実装
- 上記機能の実装に伴い、クリックだけではなく、タップに対応するJavaScriptの実装
- 他システムのキャラクターシートの実装 
- SNS認証によるログイン機能  


# ローカルでの動作方法
- Ruby 2.6.5
- Rails 6.0.0
- MySQL2
- database.ymlのencodingをutf-8に指定

- Gemをインストール  
```% bundle install```

- JavaScriptのパッケージをインストール  
```% yarn install```

- データベースの再生成  
```% rails db:migrate:reset```

# テーブル設計

## Usersテーブル

|  Column            |  Type  |  Options                  |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :cthulhus
- has_many :shinobis
- has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
- has_many :followings, through: :active_relationships, source: :follower
- has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
- has_many :followers, through: :passive_relationships, source: :following

## Relationshipsテーブル

|  Column           |  Type      |  Options    |
| ----------------- | ---------- | ----------- |
| following_id      | references | null: false |
| follower_id       | references | null: false |

### Association
- belongs_to :following, class_name: "User"
- belongs_to :follower, class_name: "User"

## Cthulhusテーブル

|  Column                |  Type      |  Options          |
| ---------------------- | ---------- | ----------------- |
| name                   | string     | null: false       |
| job                    | string     | null: false       |
| age                    | integer    | null: false       |
| sex                    | string     | null: false       |
| user                   | references | foreign_key: true |
| str                    | integer    | null: false       |
| con                    | integer    | null: false       |
| pow                    | integer    | null: false       |
| dex                    | integer    | null: false       |
| siz                    | integer    | null: false       |
| edu                    | integer    | null: false       |
| int                    | integer    | null: false       |
| app                    | integer    | null: false       |
| san                    | integer    | null: false       |
| luck                   | integer    | null: false       |
| idea                   | integer    | null: false       |
| knowledge              | integer    | null: false       |
| magick_points          | integer    | null: false       |
| damage_bonus           | integer    | null: false       |
| life_points            | integer    | null: false       |
| origin                 | integer    |                   |
| items                  | integer    |                   |
| find_hidden            | integer    |                   |
| hearing                | integer    |                   |
| first_aid              | integer    |                   |
| therapy                | integer    |                   |
| climbing               | integer    |                   |
| leap                   | integer    |                   |
| throwing               | integer    |                   |
| avoidance              | integer    |                   |
| conceal                | integer    |                   |
| hide                   | integer    |                   |
| stealth                | integer    |                   |
| disguise               | integer    |                   |
| traching               | integer    |                   |
| navigate               | integer    |                   |
| driving                | integer    |                   |
| control_1              | string     |                   |
| control_1_value        | integer    |                   |
| control_2              | string     |                   |
| control_2_value        | integer    |                   |
| control_3              | string     |                   |
| control_3_value        | integer    |                   |
| horse_ridding          | integer    |                   |
| heavy_machine          | integer    |                   |
| machine_repair         | integer    |                   |
| electrical_engineering | integer    |                   |
| computer               | integer    |                   |
| library                | integer    |                   |
| photography            | integer    |                   |
| picking                | integer    |                   |
| swimming               | integer    |                   |
| medicine               | integer    |                   |
| chemistry              | integer    |                   |
| pharmacy               | integer    |                   |
| biology                | integer    |                   |
| physics                | integer    |                   |
| astronomy              | integer    |                   |
| archeology             | integer    |                   |
| history                | integer    |                   |
| anthropology           | integer    |                   |
| geology                | integer    |                   |
| natural_history        | integer    |                   |
| accounting             | integer    |                   |
| law                    | integer    |                   |
| occult                 | integer    |                   |
| say                    | integer    |                   |
| persuade               | integer    |                   |
| credit                 | integer    |                   |
| psychology             | integer    |                   |
| price_cut              | integer    |                   |
| native_language        | string     |                   |
| native_language_value  | integer    |                   |
| language_1             | string     |                   |
| language_1_value       | integer    |                   |
| language_2             | string     |                   |
| language_2_value       | integer    |                   |
| art                    | string     |                   |
| art_value              | integer    |                   |
| work                   | string     |                   |
| work_value             | integer    |                   |
| punch                  | integer    |                   |
| kick                   | integer    |                   |
| headbutt               | integer    |                   |
| assembled              | integer    |                   |
| martial_arts           | integer    |                   |
| knife                  | integer    |                   |
| japanese_sword         | integer    |                   |
| cane                   | integer    |                   |
| handgun                | integer    |                   |
| mythology              | integer    |                   |

### Association
- belongs_to :user

## Shinobisテーブル

|  Column                |  Type      |  Options          |
| ---------------------- | ---------- | ----------------- |
| user                   | references | foreign_key: true |
| name                   | string     | null: false       |
| age                    | integer    |                   |
| sex                    | string     |                   |
| school_id              | integer    | null:false        |
| under_school           | string     |                   |
| school_style           | string     |                   |
| job                    | string     |                   |
| belief                 | string     |                   |
| origin                 | text       |                   |
| shinobi_class          | string     |                   |
| enemy                  | string     |                   |
| achievement            | integer    |                   |
| skill_space_0          | boolean    |                   |
| skill_space_1          | boolean    |                   |
| skill_space_2          | boolean    |                   |
| skill_space_3          | boolean    |                   |
| skill_space_4          | boolean    |                   |
| skill_space_5          | boolean    |                   |
| skill_space_b          | boolean    |                   |
| skill_1                | string     |                   |
| skill_2                | string     |                   |
| skill_3                | string     |                   |
| skill_4                | string     |                   |
| skill_5                | string     |                   |
| skill_6                | string     |                   |
| skill_7                | string     |                   |
| arts_secret_1          | boolean    |                   |
| arts_secret_2          | boolean    |                   |
| arts_secret_3          | boolean    |                   |
| arts_secret_4          | boolean    |                   |
| arts_secret_5          | boolean    |                   |
| arts_secret_6          | boolean    |                   |
| arts_secret_7          | boolean    |                   |
| arts_name_1            | string     |                   |
| arts_name_2            | string     |                   |
| arts_name_3            | string     |                   |
| arts_name_4            | string     |                   |
| arts_name_5            | string     |                   |
| arts_name_6            | string     |                   |
| arts_name_7            | string     |                   |
| arts_type_1            | integer    |                   |
| arts_type_2            | integer    |                   |
| arts_type_3            | integer    |                   |
| arts_type_4            | integer    |                   |
| arts_type_5            | integer    |                   |
| arts_type_6            | integer    |                   |
| arts_type_7            | integer    |                   |
| arts_skill_1           | string     |                   |
| arts_skill_2           | string     |                   |
| arts_skill_3           | string     |                   |
| arts_skill_4           | string     |                   |
| arts_skill_5           | string     |                   |
| arts_skill_6           | string     |                   |
| arts_skill_7           | string     |                   |
| arts_range_1           | string     |                   |
| arts_range_2           | string     |                   |
| arts_range_3           | string     |                   |
| arts_range_4           | string     |                   |
| arts_range_5           | string     |                   |
| arts_range_6           | string     |                   |
| arts_range_7           | string     |                   |
| arts_cost_1            | string     |                   |
| arts_cost_2            | string     |                   |
| arts_cost_3            | string     |                   |
| arts_cost_4            | string     |                   |
| arts_cost_5            | string     |                   |
| arts_cost_6            | string     |                   |
| arts_cost_7            | string     |                   |
| arts_effect_1          | text       |                   |
| arts_effect_2          | text       |                   |
| arts_effect_3          | text       |                   |
| arts_effect_4          | text       |                   |
| arts_effect_5          | text       |                   |
| arts_effect_6          | text       |                   |
| arts_effect_7          | text       |                   |
| background_1           | string     |                   |
| background_2           | string     |                   |
| background_3           | string     |                   |
| background_4           | string     |                   |
| background_5           | string     |                   |
| background_6           | string     |                   |
| background_7           | string     |                   |
| background_8           | string     |                   |
| background_9           | string     |                   |
| background_10          | string     |                   |
| background_features_1  | integer    |                   |
| background_features_2  | integer    |                   |
| background_features_3  | integer    |                   |
| background_features_4  | integer    |                   |
| background_features_5  | integer    |                   |
| background_features_6  | integer    |                   |
| background_features_7  | integer    |                   |
| background_features_8  | integer    |                   |
| background_features_9  | integer    |                   |
| background_features_10 | integer    |                   |
| background_point1      | integer    |                   |
| background_point2      | integer    |                   |
| background_point3      | integer    |                   |
| background_point4      | integer    |                   |
| background_point5      | integer    |                   |
| background_point6      | integer    |                   |
| background_point7      | integer    |                   |
| background_point8      | integer    |                   |
| background_point9      | integer    |                   |
| background_point10     | integer    |                   |
| background_effect1     | text       |                   |
| background_effect2     | text       |                   |
| background_effect3     | text       |                   |
| background_effect4     | text       |                   |
| background_effect5     | text       |                   |
| background_effect6     | text       |                   |
| background_effect7     | text       |                   |
| background_effect8     | text       |                   |
| background_effect9     | text       |                   |
| background_effect10    | text       |                   |
| mystery_name_1         | string     |                   |
| mystery_name_2         | string     |                   |
| mystery_skill_1        | string     |                   |
| mystery_skill_2        | string     |                   |
| mystery_effect_1       | string     |                   |
| mystery_effect_2       | string     |                   |
| mystery_directing_1    | string     |                   |
| mystery_directing_2    | string     |                   |
| item_name_1            | string     |                   |
| item_name_2            | string     |                   |
| item_name_3            | string     |                   |
| item_name_4            | string     |                   |
| item_name_5            | string     |                   |
| item_number_1          | string     |                   |
| item_number_2          | string     |                   |
| item_number_3          | string     |                   |
| item_number_4          | string     |                   |
| item_number_5          | string     |                   |
| item_effect_1          | text       |                   |
| item_effect_2          | text       |                   |
| item_effect_3          | text       |                   |
| item_effect_4          | text       |                   |
| item_effect_5          | text       |                   |
