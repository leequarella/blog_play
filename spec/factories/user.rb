FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@example.com" }  
    first_name "bob"
    last_name  "name"
    password "secret"
    sequence(:username) { |n| "username#{n}" }  
  end
end
