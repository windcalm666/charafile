class CreateCthulhus < ActiveRecord::Migration[6.0]
  def change
    create_table :cthulhus do |t|
      #プロフィール関連ステータス
      t.string :name, null: false
      t.string :job, null: false
      t.integer :age,  null: false
      t.string :sex, null: false
      t.references :user, foreign_key: true

      #基礎ステータス
      t.integer :str, null: false
      t.integer :con, null: false
      t.integer :pow, null: false
      t.integer :dex, null: false
      t.integer :siz, null: false
      t.integer :edu, null: false
      t.integer :int, null: false
      t.integer :app, null: false
      t.integer :san, null: false
      t.integer :luck, null: false
      t.integer :idea, null: false
      t.integer :knowledge, null: false
      t.integer :magick_points, null: false
      t.string :damage_bonus, null: false
      t.integer :life_points, null: false

      #設定と所持品
      t.text :origin
      t.text :items

      #以下全て技能関係カラム
      t.integer :find_hidden
      t.integer :hearing
      t.integer :first_aid
      t.integer :therapy
      t.integer :climbing
      t.integer :leap
      t.integer :throwing
      t.integer :avoidance
      t.integer :conceal
      t.integer :hide
      t.integer :stealth
      t.integer :disguise
      t.integer :traching
      t.integer :navigate

      t.integer :driving
      t.string :control_1
      t.integer :control_1_value
      t.string :control_2
      t.integer :control_2_value
      t.string :control_3
      t.integer :control_3_value
      t.integer :horse_ridding
      t.integer :heavy_machine
      t.integer :machine_repair
      t.integer :electrical_engineering
      t.integer :computer
      t.integer :library
      t.integer :photography
      t.integer :picking
      t.integer :swimming

      t.integer :medicine
      t.integer :chemistry
      t.integer :pharmacy
      t.integer :biology
      t.integer :physics
      t.integer :astronomy
      t.integer :archeology
      t.integer :history
      t.integer :anthropology
      t.integer :geology
      t.integer :natural_history
      t.integer :accounting
      t.integer :law
      t.integer :occult

      t.integer :say
      t.integer :persuade
      t.integer :credit
      t.integer :psychology
      t.integer :price_cut
      t.string :native_language
      t.integer :native_language_value
      t.string :language_1
      t.integer :language_1_value
      t.string :language_2
      t.integer :language_2_value
      t.string :art
      t.integer :art_value
      t.string :work
      t.integer :work_value

      t.integer :punch
      t.integer :kick
      t.integer :headbutt
      t.integer :assembled
      t.integer :martial_arts
      t.integer :knife
      t.integer :japanese_sword
      t.integer :cane
      t.integer :handgun
      t.integer :mythology

      t.timestamps
    end
  end
end
