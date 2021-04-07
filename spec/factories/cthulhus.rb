FactoryBot.define do
  factory :cthulhu do
    name {Faker::Name.name}
    job {Faker::Job.title}
    age {Faker::Number.between(from: 10, to: 100)}
    sex {"男"}
    str {Faker::Number.between(from: 3, to: 18)}
    con {Faker::Number.between(from: 3, to: 18)}
    dex {Faker::Number.between(from: 3, to: 18)}
    app {Faker::Number.between(from: 3, to: 18)}
    edu {Faker::Number.between(from: 6, to: 21)}
    int {Faker::Number.between(from: 8, to: 18)}
    siz {Faker::Number.between(from: 8, to: 18)}
    pow {Faker::Number.between(from: 3, to: 18)}
    san {pow * 5}
    luck {pow * 5}
    idea {int * 5}
    knowledge {edu * 5}
    magick_points {pow}
    damage_bonus {"+1D4"}
    life_points {Faker::Number.between(from: 6, to: 18)}
    origin {Faker::Lorem.word}
    items {Faker::Lorem.word}
    find_hidden {25}
    hearing {25}
    first_aid {30}
    therapy {1}
    climbing {40}
    leap {25}
    throwing {25}
    avoidance {dex * 2}
    conceal {15}
    hide {10}
    stealth {10}
    disguise {1}
    traching {10}
    navigate {10}
    driving {25}
    control_1 {Faker::Vehicle.vin}
    control_1_value {1}
    control_2 {Faker::Vehicle.vin}
    control_2_value {1}
    control_3 {Faker::Vehicle.vin}
    control_3_value {1}
    horse_ridding {5}
    heavy_machine {1}
    machine_repair {20}
    electrical_engineering {1}
    computer {1}
    library {25}
    photography {10}
    picking {1}
    swimming {25}
    medicine {5}
    chemistry {1}
    pharmacy {1}
    physics {1}
    astronomy {1}
    archeology {1}
    history {20}
    anthropology {1}
    geology {1}
    natural_history {1}
    accounting {10}
    law {5}
    occult {5}
    say {5}
    persuade {15}
    credit {10}
    psychology {5}
    price_cut {5}
    native_language {"日本語"}
    native_language_value {edu * 5}
    language_1 {"英語"}
    language_1_value {1}
    language_2 {"ラテン語"}
    language_2_value {1}
    art {"絵画"}
    art_value {5}
    work {"料理"}
    work_value {5}
    biology {1}
    punch {50}
    kick {25}
    headbutt {15}
    assembled {25}
    martial_arts {1}
    knife {25}
    japanese_sword {20}
    cane {15}
    handgun {20}
    mythology {0}

    association :user

    after(:build) do |cthulhu|
      cthulhu.image.attach(io: File.open('public/images/test_character.jpg'), filename: 'test_character.jpg')
    end
  end
end
