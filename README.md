# アプリケーション名
キャラファイル

# アプリケーション概要
アナログゲームであるTRPGのキャラクターデータを本来紙で管理しているものを、アカウントを作成し、紐づけることで管理を楽にするためのアプリケーション。
また、他のユーザーをフォロー、フォロワーの関係とすることで、一緒に遊ぶ相手のキャラクターを覗くことができるようになる。

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
TRPGというアナログゲームは、元々は紙とペンとサイコロさえあれば遊べると言いうものでした。  
ですが、そのゲームの性質上どうしてもキャラクターの管理をするためには紙になってしまいます。紙で管理すること自体に問題はないですが、不便だと思ってしまう場面が多々あります。  
例えば、ファイルなどにまとめて棚に収納したとします。  
どこにしまったか忘れてしまうと探すのも手間ですし、数が増えるとかさばってしまうため、収納に困ります。
こういった問題をこのアプリケーションによってアカウントと紐付けて管理することでスペースを取らず、ログインするだけでキャラクターの一覧を確認することができるようにしました。  
また、TRPGは複数人で遊ぶことが多いので、他の友人のアカウントをフォローすることで紙ではできないオンライン環境でのキャラクター共有をすることができるようにしました。


# 洗い出した要件

# 実装した機能についての画像やGIF及びその説明

# 実装予定の機能

# ローカルでの動作方法

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
| follower_id       | references | null:false  |

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
