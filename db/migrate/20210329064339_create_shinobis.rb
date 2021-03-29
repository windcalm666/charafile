class CreateShinobis < ActiveRecord::Migration[6.0]
  def change
    create_table :shinobis do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.integer :age
      t.string :sex
      t.integer :school_id, null: false
      t.string :under_school
      t.string :school_style
      t.string :job
      t.string :belief
      t.text :origin
      t.string :class
      t.string :enemy

      t.boolean :skill_spaece_1
      t.boolean :skill_spaece_2
      t.boolean :skill_spaece_3
      t.boolean :skill_spaece_4
      t.boolean :skill_spaece_5
      t.string :skill_1
      t.string :skill_2
      t.string :skill_3
      t.string :skill_4
      t.string :skill_5
      t.string :skill_6
      t.string :skill_7
      t.string :skill_8


      t.string :arts_name_1
      t.string :arts_name_2
      t.string :arts_name_3
      t.string :arts_name_4
      t.string :arts_name_5
      t.string :arts_name_6
      t.string :arts_name_7
      t.string :arts_name_8

      t.integer :arts_type_1
      t.integer :arts_type_2
      t.integer :arts_type_3
      t.integer :arts_type_4
      t.integer :arts_type_5
      t.integer :arts_type_6
      t.integer :arts_type_7
      t.integer :arts_type_8

      t.string :arts_skill_1
      t.string :arts_skill_2
      t.string :arts_skill_3
      t.string :arts_skill_4
      t.string :arts_skill_5
      t.string :arts_skill_6
      t.string :arts_skill_7
      t.string :arts_skill_8

      t.string :arts_range_1
      t.string :arts_range_2
      t.string :arts_range_3
      t.string :arts_range_4
      t.string :arts_range_5
      t.string :arts_range_6
      t.string :arts_range_7
      t.string :arts_range_8

      t.string :arts_cost_1
      t.string :arts_cost_2
      t.string :arts_cost_3
      t.string :arts_cost_4
      t.string :arts_cost_5
      t.string :arts_cost_6
      t.string :arts_cost_7
      t.string :arts_cost_8

      t.text :arts_effect_1
      t.text :arts_effect_2
      t.text :arts_effect_3
      t.text :arts_effect_4
      t.text :arts_effect_5
      t.text :arts_effect_6
      t.text :arts_effect_7
      t.text :arts_effect_8


      t.string :background_1
      t.string :background_2
      t.string :background_3
      t.string :background_4
      t.string :background_5
      t.string :background_6
      t.string :background_7
      t.string :background_8
      t.string :background_9
      t.string :background_10
      t.integer :backgronud_point_1
      t.integer :backgronud_point_2
      t.integer :backgronud_point_3
      t.integer :backgronud_point_4
      t.integer :backgronud_point_5
      t.integer :backgronud_point_6
      t.integer :backgronud_point_7
      t.integer :backgronud_point_8
      t.integer :backgronud_point_9
      t.integer :backgronud_point_10
      t.text :background_effect_1
      t.text :background_effect_2
      t.text :background_effect_3
      t.text :background_effect_4
      t.text :background_effect_5
      t.text :background_effect_6
      t.text :background_effect_7
      t.text :background_effect_8
      t.text :background_effect_9
      t.text :background_effect_10

      t.string :mystery_name_1
      t.string :mystery_name_2
      t.string :mystery_name_3

      t.string :mystery_skill_1
      t.string :mystery_skill_2
      t.string :mystery_skill_3

      t.string :mystery_effect_1
      t.string :mystery_effect_2
      t.string :mystery_effect_3

      t.string :mystery_directing_1
      t.string :mystery_directing_2
      t.string :mystery_directing_3


      t.string :item_name_1
      t.string :item_name_2
      t.string :item_name_3
      t.string :item_name_4
      t.string :item_name_5
      t.integer :item_number_1
      t.integer :item_number_2
      t.integer :item_number_3
      t.integer :item_number_4
      t.integer :item_number_5
      t.text :item_effest_1
      t.text :item_effest_2
      t.text :item_effest_3
      t.text :item_effest_4
      t.text :item_effest_5

      t.timestamps
    end
  end
end
