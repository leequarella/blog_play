FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@example.com" }  
    password "secret"
    username "UserName"
  end
end
