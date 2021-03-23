class CreateCthulhus < ActiveRecord::Migration[6.0]
  def change
    create_table :cthulhus do |t|
      t.string :name, null: false
      t.string :job, null: false
      t.integer :age,  null: false
      t.string :sex, null: false
      t.references :user, foreign_key: true

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

      t.text :origin
      t.text :items

      t.timestamps
    end
  end
end
