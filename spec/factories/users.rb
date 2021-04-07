FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.free_email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}

    after(:build) do |user|
      user.image.attach(io: File.open('public/images/test_character.jpg'), filename: 'test_character.jpg')
    end
  end
end
