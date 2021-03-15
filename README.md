# テーブル設計

## Usersテーブル

|  Column            |  Type  |  Options                  |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :characters
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

## Charactersテーブル

|  Column        |  Type        |  Options          |
| -------------- | ------------ | ----------------- |
| name           | string       | null: false       |
| system_id      | integer      | null: false       |
| user           | references   | foreign_key: true |

### Association
- belongs_to :user
- has_many :cthulhus
- has_many :sw25s
- has_many :shinobigamis
