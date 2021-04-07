FactoryBot.define do
  factory :shinobi do
      name {Faker::Name.name}
      age {Faker::Number.between(from: 10, to: 100)}
      sex {"男"}
      school_id {Faker::Number.between(from: 1, to: 6)}
      under_school {"No.9"}
      school_style {"誰にも縛られずに生きる"}
      job {"フリーター"}
      belief {"義"}
      origin {Faker::Lorem.word}
      shinobi_class {"中忍"}
      enemy {"比良坂機関"}
      achievement {0}

      skill_1 {Faker::Lorem.word}
      skill_2 {Faker::Lorem.word}
      skill_3 {Faker::Lorem.word}
      skill_4 {Faker::Lorem.word}
      skill_5 {Faker::Lorem.word}
      skill_6 {Faker::Lorem.word}
      skill_7 {Faker::Lorem.word}

      arts_name_1 {Faker::Lorem.word}
      arts_name_2 {Faker::Lorem.word}
      arts_name_3 {Faker::Lorem.word}
      arts_name_4 {Faker::Lorem.word}
      arts_name_5 {Faker::Lorem.word}
      arts_name_6 {Faker::Lorem.word}
      arts_name_7 {Faker::Lorem.word}
      arts_type_1 {1}
      arts_type_2 {1}
      arts_type_3 {1}
      arts_type_4 {1}
      arts_type_5 {1}
      arts_type_6 {1}
      arts_type_7 {1}
      arts_skill_1 {Faker::Lorem.word}
      arts_skill_2 {Faker::Lorem.word}
      arts_skill_3 {Faker::Lorem.word}
      arts_skill_4 {Faker::Lorem.word}
      arts_skill_5 {Faker::Lorem.word}
      arts_skill_6 {Faker::Lorem.word}
      arts_skill_7 {Faker::Lorem.word}
      arts_range_1 {Faker::Lorem.word}
      arts_range_2 {Faker::Lorem.word}
      arts_range_3 {Faker::Lorem.word}
      arts_range_4 {Faker::Lorem.word}
      arts_range_5 {Faker::Lorem.word}
      arts_range_6 {Faker::Lorem.word}
      arts_range_7 {Faker::Lorem.word}
      arts_cost_1 {Faker::Lorem.word}
      arts_cost_2 {Faker::Lorem.word}
      arts_cost_3 {Faker::Lorem.word}
      arts_cost_4 {Faker::Lorem.word}
      arts_cost_5 {Faker::Lorem.word}
      arts_cost_6 {Faker::Lorem.word}
      arts_cost_7 {Faker::Lorem.word}
      arts_effect_1 {Faker::Lorem.word}
      arts_effect_2 {Faker::Lorem.word}
      arts_effect_3 {Faker::Lorem.word}
      arts_effect_4 {Faker::Lorem.word}
      arts_effect_5 {Faker::Lorem.word}
      arts_effect_6 {Faker::Lorem.word}
      arts_effect_7 {Faker::Lorem.word}

      background_1 {Faker::Lorem.word}
      background_2 {Faker::Lorem.word}
      background_3 {Faker::Lorem.word}
      background_4 {Faker::Lorem.word}
      background_5 {Faker::Lorem.word}
      background_6 {Faker::Lorem.word}
      background_7 {Faker::Lorem.word}
      background_8 {Faker::Lorem.word}
      background_9 {Faker::Lorem.word}
      background_10 {Faker::Lorem.word}
      background_features_1 {1}
      background_features_2 {1}
      background_features_3 {1}
      background_features_4 {1}
      background_features_5 {1}
      background_features_6 {1}
      background_features_7 {1}
      background_features_8 {1}
      background_features_9 {1}
      background_features_10 {1}
      backgronud_point_1 {1}
      backgronud_point_2 {1}
      backgronud_point_3 {1}
      backgronud_point_4 {1}
      backgronud_point_5 {1}
      backgronud_point_6 {1}
      backgronud_point_7 {1}
      backgronud_point_8 {1}
      backgronud_point_9 {1}
      backgronud_point_10 {1}
      background_effect_1 {1}
      background_effect_2 {1}
      background_effect_3 {1}
      background_effect_4 {1}
      background_effect_5 {1}
      background_effect_6 {1}
      background_effect_7 {1}
      background_effect_8 {1}
      background_effect_9 {1}
      background_effect_10 {1}

      mystery_name_1 {Faker::Lorem.word}
      mystery_name_2 {Faker::Lorem.word}
      mystery_skill_1 {Faker::Lorem.word}
      mystery_skill_2 {Faker::Lorem.word}
      mystery_effect_1 {Faker::Lorem.word}
      mystery_effect_2 {Faker::Lorem.word}
      mystery_directing_1 {Faker::Lorem.word}
      mystery_directing_2 {Faker::Lorem.word}

      item_name_1 {Faker::Lorem.word}
      item_name_2 {Faker::Lorem.word}
      item_name_3 {Faker::Lorem.word}
      item_name_4 {Faker::Lorem.word}
      item_name_5 {Faker::Lorem.word}
      item_number_1 {1}
      item_number_2 {1}
      item_number_3 {1}
      item_number_4 {1}
      item_number_5 {1}
      item_effect_1 {Faker::Lorem.word}
      item_effect_2 {Faker::Lorem.word}
      item_effect_3 {Faker::Lorem.word}
      item_effect_4 {Faker::Lorem.word}
      item_effect_5 {Faker::Lorem.word}

      association :user

    after(:build) do |shinobi|
      shinobi.image.attach(io: File.open('public/images/test_character.jpg'), filename: 'test_character.jpg')
    end
  end
end
