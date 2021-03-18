class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.integer :system_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
