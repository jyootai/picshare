FactoryGirl.define do
  factory :photo do
    title 'title'
    association :user
  end
end
