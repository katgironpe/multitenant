FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end

  sequence :username do |n|
    "username#{n}"
  end

  factory :user do
    first_name 'James'
    last_name 'Bond'
    email { generate :email }
    password 'TestUser007'
    password_confirmation 'TestUser007'
  end
end
