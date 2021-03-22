class CreateCthulhuSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :cthulhu_skills do |t|
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
      t.integer :electrical_enginearing
      t.integer :computer
      t.integer :library
      t.integer :photograpy
      t.integer :picking
      t.integer :swimming

      t.integer :medicine
      t.integer :chemistry
      t.integer :pharmacy
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
      t.integer :psyshology
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
