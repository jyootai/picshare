FactoryGirl.define do
  factory :user do
    sequence(:username){|n| "name#{n}" }
    sequence(:email){|n| "test#{n}@test.com" }
    password 'password'
    password_confirmation 'password'
  end
end
